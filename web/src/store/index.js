import Vue from 'vue'
import Vuex from 'vuex'
import { Toast } from 'vant';

Vue.use(Vuex)
Vue.use(Toast);

export default new Vuex.Store({
  state: {
     //用户登录状态
     isLogin : false,
     nickname :""
   
  },
  mutations: {
      isLogin(state){
          state.isLogin=true;
          state.nickname=sessionStorage.getItem("nickname");
          
      },
      quit(state){
        state.isLogin=false;
        sessionStorage.removeItem("uname");
        sessionStorage.removeItem("avatar");
        sessionStorage.removeItem("nickname");
      }
      

  },
  actions: {
   
  },
  modules: {
  }
})
