<template>
  <div id="app">
  
  <transition :enter-active-class="animateEnter" :leave-active-class="animateLeave">
      <router-view ></router-view>
  </transition>
  </div>
</template>

<script>
import  animate from "animate.css";
export default {
   data(){
     return {
       active1:0,
      animateEnter:"",
      animateLeave:""
     }
   },
   
  watch:{
    //监听路由守卫
     $route(to,from){
        if(to.path=="/login" && from.path=="/user"){
               this.animateEnter="animate__animated animate__zoomOutDown";
              this.animateLeave="animate__animated animate__zoomOutUp";
        }else if(to.path=="/login" && from.path=="/" ){
              this.animateEnter="animate__animated animate__zoomOutDown";
              this.animateLeave="animate__animated animate__zoomOutUp";
              
        }else if(to.path=="/register" && from.path=="/user" || to.path=="/register" && from.path=="/login" ){
                  this.animateEnter="animate__animated animate__zoomOutDown";
              this.animateLeave="animate__animated animate__zoomOutUp";
        }else{
              this.animateEnter="";
              this.animateLeave="";
        }
     }
  },
  created(){
        
      
  }
  
}
</script>

<style>


</style>
