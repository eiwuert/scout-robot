<template>
	<div class="cp-wrap cp-welcome-index">
        <h1>Willkommen bei Scout Robot!</h1>
	</div>
</template>

<style lang="less">
	.cp-wrap.cp-welcome-index {

	}
</style>

<script>
	export default {
		data: function() {
			return  {

			};
		},
		created: function() {
			this.$store.commit('settitle', 'Willkommen');
		}
	}
</script>
