<template>
	<div class="v-comp">
        <v-dialog fullscreen v-model="paymentsModal">
            <payments @close="paymentsModal = false" :member="payments"></payments>
        </v-dialog>
		<v-toolbar class="blue darken-3" dark>
			<v-toolbar-items>
				<v-btn @click="$router.push({name: 'member.add'})" class="" flat>Hinzufügen</v-btn>
				<v-btn @click="filterVisible=!filterVisible" flat>
					<v-icon v-if="!filterVisible">fa-filter</v-icon><v-icon v-if="filterVisible">fa-close</v-icon>
					&nbsp;&nbsp;
					<span v-if="!filterVisible">Filter</span><span v-if="filterVisible">Schließen</span>
				</v-btn>
				<v-text-field label="Name suchen" v-model="filter.name" class="ml-3"></v-text-field>
			</v-toolbar-items>
		</v-toolbar>
		<v-divider></v-divider>
		<v-container grid-list-md fluid class="pr-4 pl-4 grey darken-2" dark v-if="filterVisible">
			<v-layout row wrap dark>
				<v-flex md6 lg4>
					<v-text-field dark v-model="filter.name" label="Name"></v-text-field>
				</v-flex>
				<v-flex md6 lg4>
					<v-text-field dark v-model="filter.location" label="Adresse/PLZ/Ort"></v-text-field>
				</v-flex>
                <v-flex xs12>
                    <v-subheader>Status</v-subheader>
                    <v-checkbox v-model="filter.active" label="Aktiv"></v-checkbox>
                    <v-checkbox v-model="filter.inactive" label="Inaktiv"></v-checkbox>
                </v-flex>
			</v-layout>
		</v-container>
		<v-divider v-if="filter"></v-divider>

		<v-data-table
			v-bind:headers="[
				{text: 'Nachname', value: 'lastname', align: 'left'},
				{text: 'Vorname', value: 'firstname', align: 'left'},
				{text: 'Adresse', value: 'address', align: 'left'},
				{text: 'PLZ', value: 'zip', align: 'left'},
				{text: 'Ort', value: 'city', align: 'left'},
				{text: 'Aktion', sortable: false, value: 'id', align: 'left'},
			]"
			:items="filteredMembers"
			v-if="members"
			:rows-per-page-items="[10, 25, 50, {text: 'Alle', value: -1}]"
			rows-per-page-text="Einträge pro Seite"
			dark expand must-sort
		>
			<template slot="items" slot-scope="prop">
				<td>{{ prop.item.lastname }}</td>
				<td>{{ prop.item.firstname }}</td>
				<td>{{ prop.item.address }}</td>
				<td>{{ prop.item.zip }}</td>
				<td>{{ prop.item.city }}</td>
				<td>
					<v-btn-toggle>
                        <v-btn @click="$router.push({name: 'member.edit', params: {id: prop.item.id}})"><v-icon>fa-pencil</v-icon></v-btn>
                        <v-btn @click="paymentsModal = true; payments = prop.item"><v-icon>fa-money</v-icon></v-btn>
						<v-btn><v-icon>fa-close</v-icon></v-btn>
					</v-btn-toggle>
				</td>
			</template>
		</v-data-table>
	</div>
</template>

<script>
	export default {
		data: function() {
			return {
				actions: [
					{icon: 'info', event: 'info'}
				],
				member: false,
				members: false,
                payments: {},
                paymentsModal: false,
				side: false,
				filter: {
					location: '',
					name: '',
                    active: true,
                    inactive: false
				},
				filterVisible: false
			};
		},
		watch: {
			filterVisible: function(n) {
				if (n === false) {
					this.filter = {
						location: '',
						name: ''
					};
				}
			}
		},
        components: {
            payments: require('./payments.vue')
        },
		computed: {
			headings: function() {
				var h = [
					{title: 'Nachname', data: 'lastname'},
					{title: 'Vorname', data: 'firstname'},
				];
				if (!this.member && !this.side) {
					h.push({title: 'Adresse', data: 'address'});
					h.push({title: 'Eintritt', data: 'joined_at', type: 'date'});
					h.push({title: 'Stadt', data: 'city'});
					h.push({title: 'PLZ', data: 'zip'});
					h.push({title: 'Ausstände', type: 'callback', data: 'strikes'});
				}
				return h;
			},
			filteredMembers: function() {
				var vm = this;
				return this.members.filter((m) => {
					var hasLocation = true;
					var hasName = true;
					var activeState = true;
					var inactiveState = true;

					if (vm.filter.name == '' && vm.filter.location == '') {
						hasName = true;
						hasLocation = true;
					}
					if (vm.filter.name != '') {
						hasName = (m.firstname + m.lastname).toLowerCase().indexOf(vm.filter.name.toLowerCase()) !== -1;
					}
					if (vm.filter.location != '') {
						hasLocation = (m.address + m.zip + m.city).toLowerCase().indexOf(vm.filter.location.toLowerCase()) !== -1;
					}

                    if (vm.filter.active == false && m.active) {return false;}
                    if (vm.filter.inactive == false && !m.active) {return false;}

					return hasLocation && hasName;
				});
			}
		},
		methods: {
			getStrikesAttribute(value) {
				if (value == 0) {
					return '---';
				}

				return (value / 100).toFixed(2).replace('.', ',')+' €';
			},
			reloadmember: function(member) {
				var vm = this;
			
				axios.get('/api/member/'+member.id+'/table').then(function(data) {
					vm.members = vm.members.map(function(m) {
						if (m.id == data.data.id) {return data.data;}

						return m;
					});
				});
			},
			openInfo: function(row, action) {
				this.member = row;
			}
		},
		mounted: function() {
			var vm = this;

			axios.get('/api/member/table').then(function(data) {
				vm.members = data.data;
			});
		},
		created: function() {
			this.$store.commit('settitle', 'Mitglieder-Übersicht');
		},
	}
</script>

