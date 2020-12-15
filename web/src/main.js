import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Vant from "vant";
import 'vant/lib/index.css';
import axios from "axios";
import MintUI from 'mint-ui';
import 'mint-ui/lib/style.min.css'

Vue.use(MintUI)
axios.defaults.baseURL="http://localhost:9090/books";

Vue.prototype.axios=axios;

Vue.use(Vant);
Vue.filter("date",function(oldVal){
  let date = new Date(oldVal) 
  let year = date.getFullYear();
  //日期
  let data=date.getDate()>=10 ? date.getDate() : "0"+( date.getDate());
  //月份
  let day = date.getMonth()+1>=10  ? date.getMonth()+1 : "0" + (date.getMonth()+1);  
  
  let time = year+"年" + day  +"月" + data + "日  " ;
  return time 
})
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
