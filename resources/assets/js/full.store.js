import Vuex from 'vuex';
Vue.use(Vuex);

import merge from 'merge';

const Store = new Vuex.Store({
	state: {
		user: false,
		config: false
	},
	mutations: {
		setinfo(state, data) {
			state.user = data.user;
			state.config = data.config;
		},
		updateuser(state, data) {
			state.user = merge(state.user, data);
		}
	},
	actions: {
		getinfo() {
			return new Promise((resolve, reject) => {
				axios.get('/api/info').then((ret) => {
					resolve(ret.data);
				}).catch((error) => {
					reject(error);
				});
			});
		}
	}
});

export default Store;
