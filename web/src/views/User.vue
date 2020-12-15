<template>
     <div class="user">
         <div class="avator"  v-if="this.$store.state.isLogin">
                <img :src="URL+avatar" class="avatarImg" >
                <div class="login">{{this.$store.state.nickname}}</div>
         </div>
         <div class="avator" @click="goLogin"  v-else>
                <img src="../assets/avator.svg" >
                <div class="login">马上登录</div>
         </div>
        <!-- 通知栏 -->
         <van-notice-bar
            scrollable
            color="#5fd382"
            left-icon="volume-o"
            text="登录解锁更多福利!"
            />
         <van-cell title="切换用户" icon="user-circle-o" @click="login">
            <template #right-icon>
                <van-icon name="arrow" />
            </template>
        </van-cell>
        <van-cell title="历史记录" icon="clock-o" >
            <template #right-icon>
                <van-icon name="arrow" />
            </template>
        </van-cell>
        
        <van-cell title="意见反馈" icon="description" >
            <template #right-icon>
                <van-icon name="arrow" />
            </template>
        </van-cell>
        <van-cell title="评论" icon="comment-o" >
            <template #right-icon>
                <van-icon name="arrow" />
            </template>
        </van-cell>
        <van-cell title="设置" icon="setting-o" >
            <template #right-icon>
                <van-icon name="arrow" />
            </template>
        </van-cell>
        <!-- 注册 -->
           <van-button  v-show="!this.$store.state.isLogin"  type="primary"  block round  style="margin-top:100px" @click="register">注册</van-button>
            <!-- 注销 -->
         <van-button v-show="this.$store.state.isLogin"  block round  style="margin-top:100px" @click="quit">注销</van-button>
          <!-- 底部选项卡 -->
  <van-tabbar v-model="active1" active-color="green">
    <van-tabbar-item icon="bag-o" to='/'>书城</van-tabbar-item>
    <van-tabbar-item  to="/booksrack">
        <div class="iconfont icon-shujia"  style="font-size:22px"></div>
        <div>书架</div>
    </van-tabbar-item>
    <van-tabbar-item icon="user-circle-o" to="/user">用户</van-tabbar-item>
  </van-tabbar>
  
      </div>
</template>

<script>
export default {
    data(){
        return{
             URL : "http://localhost:9090/avatar",
             avatar: sessionStorage.getItem("avatar"),
             active1:2,
            // checkmsg:  sessionStorage.getItem('uname') ? true : false
        }
    },
    methods:{
        //马上登录
        goLogin(){
            this.$router.push("/login")
        },
        //切换用户
        login(){
            this.$router.push("/login")
        },
        //退出登录
        quit(){
             this.$store.commit("quit");
        },
        register(){
            this.$router.push("/register")
        }
        
    },
    mounted(){
        let islogin = sessionStorage.getItem("uname")? true :false 
         if(islogin==true){
             this.$store.commit("isLogin")
         }
        
    },
   
    
}
</script>
<style scoped>
.avator{ 
    display: flex;
    width: 100%;
    height: 150px;
    background-image:url(../assets/shujia.jpg)     ; 
    background-position-x: 50%;
    background-position-y: -284%;
    align-items: center;
     
}
.avator .login{
    color: white;
    font-size: 18px;
    margin-left: 10px;
}
.avatarImg{
    width: 70px; height: 70px;
    border-radius: 50%;
}

</style>

