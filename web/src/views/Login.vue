<template>
    <div class="login">
        <van-nav-bar
            title="用户登录"
            left-text="返回"
            left-arrow
            color="green"
            @click-left="back"
            />
        <van-cell-group>
            <!-- 手机号 -->
        <van-field
            v-model="phone"
            left-icon="phone-o"
            right-icon="warning-o"
            label="手机号"
            placeholder="输入手机号"
             @blur.native.capture="phoneCheck"
        />
           <div  style="margin-left:135px;color:green">{{phoneMsg}}</div>
         <!--   密码输入框 -->
        <van-field
            v-model="upwd"
            type="password"
            label="密码"
            left-icon="pending-payment"
            placeholder="请输入6数字位密码"
              @blur.native.capture="upwdCheck"
            
        />
         <div  style="margin-left:135px;color:green" >{{upwdMsg}}</div>
        
        </van-cell-group>
        <!--登录按钮  -->
        <van-button  type="primary"  block round style="margin-top:50px" @click="login">登录</van-button>


    
    </div>
</template>
<script>
import { Toast } from 'vant';
export default {
    data(){
        return{
            //双向绑定 密码和用户名的值
            phone:"",
            upwd:"",
            //密码和手机号格式是否正确
            phoneMsg:"",
            upwdMsg:""
        }
    },
    methods:{
        //验证手机号格式
        phoneCheck(){
            if(this.phone==""){
                Toast("密码不能为空")
            }
            let reg = /^1[3456789]\d{9}$/;
            if(!(reg.test(this.phone))){
                    Toast({
                    message: '手机号格式不正确',
                    position: 'top',
                  });
                  this.phoneMsg="";
                   return false
                }else{
                    this.phoneMsg="格式正确";
                     return true
                }
        
        },
        // 验证密码格式
        upwdCheck(){
                  let reg = /^[a-z]{3,6}\d{3,6}$/;
            if(!(reg.test(this.upwd))){
                   
                    Toast({
                    message: '密码格式不正确',
                    position: 'top',
                  });
                   this.upwdMsg="";
                    return false
                 
                }else{
                    this.upwdMsg="格式正确"
                     return true
                } 
        },
        //登录按钮
        login(){
            let phone = this.phone;
            let upwd =this.upwd;
            if(this.phoneCheck()==true && this.upwdCheck()==true ){
                 this.axios.get(`/login?phone=${phone}&upwd=${upwd}`).then(res=>{
                     console.log(res.data );
                         
                         if(res.data.code>0){
                               Toast("登录成功")
                               this.$router.push("/");
                              sessionStorage.setItem("uname" , res.data.result[0].uid)
                              sessionStorage.setItem("avatar" ,res.data.result[0].avatar);
                              sessionStorage.setItem("nickname" ,res.data.result[0].nickname);
                              this.$store.commit("isLogin")
                         }else{
                               Toast("用户名或密码错误 ，请重新登录") 
                         }
                  })
            }
            
        },
        //返回按钮
       back(){
            this.$router.push("/")
        }
        
    },
    
}
</script>
