<template>
     <div class="register">
            <!-- 头部导航栏 -->
        <van-nav-bar
            title="用户登录"
            left-text="返回"
            left-arrow
            color="green"
            @click-left="back"
            />
        <van-form @submit="onSubmit">
        <van-field
            v-model="username"
            name="user"
            label="手机号"
            placeholder="手机号"
            :rules="[{ required: true, message: '请填写手机号' }]"
        />
        <van-field
            v-model="password"
            type="password"
            name="upwd"
            label="密码"
            placeholder="密码"
            :rules="[{ required: true, message: '请填写密码' }]"
        />
         <van-field
            v-model="nickname"
            name="nickname"
            label="昵称"
            placeholder="昵称"
        />
         
         <van-field name="uploader" label="头像">
            <template #input>
                <van-uploader v-model="uploader" />
            </template>
        </van-field>
        <div style="margin: 16px;">
            <van-button round block type="primary" native-type="submit">
                注册
            </van-button>
        </div>
   </van-form>  
     
     </div>
</template>
<script>
import { Toast , Dialog} from 'vant';
export default {
  components: {
    [Dialog.Component.name]: Dialog.Component,
  },
  data() {
    return {
      username: '',
      password: '',
      nickname:"",
      fileList: [],
      uploader:[],
      
      
    };
  },
  methods: {
    //注册提交按钮
    onSubmit(values) {
     
          let params = new FormData()
          params.append("file",values.uploader[0].file)
          params.append("upwd",values.upwd);
          params.append("user",values.user);
          params.append("nickname",values.nickname);
        this.axios.post("/reg", params, {headers: {'Content-Type': 'multipart/form-data'}}).then(res => {
             if(res.data.code==200){
              Dialog.alert({
              title: '注册',
              message: '恭喜你注册成功',
              confirmButtonColor: "green"
            }).then(() => {
                this.$router.push("/login")
            });
           }else{
              Toast("注册失败 ,手机号已注册过")
           }
        })
     },
    back(){
      this.$router.go(-1);
      
    },
  },


};
</script>