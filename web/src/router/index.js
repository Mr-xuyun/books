import Vue from 'vue';
import VueRouter from 'vue-router';
import Home from '../views/Home.vue';
import User from "../views/User.vue";
import Details from "../views/Details.vue";
import Login from "../views/Login.vue";
import { Toast } from 'vant';
import Search  from "../views/Search.vue";
import Register from "../views/Register.vue";
Vue.use(VueRouter)

  const routes = [
    {
       path:"/register",
       
       component:Register
    },
    {
      path:"/search",
      component:Search
    },
    {
     path:"/login",
     component:Login
    },
   {
    path:"/detail",
   
    component:Details    
   },
  {
    path:"/user",
    
    component:User
  },
  {
    path: '/',
    component: Home
  },
  {
    path: '/booksrack',
    meta:{code:true},
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/BooksRack.vue')
  }
]



const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

router.beforeEach((to,from,next)=>{
  let  isLogin = sessionStorage.getItem("uname") ? true :false ;
  if (to.meta.code) {    
        if(isLogin==false){
          Toast("请先登录")
            router.push("/login")
        }else{
          next();
        }
      }else{
        next();
    }    //如果需要跳转 ，往下走（1）
             
       
  

})








export default router
