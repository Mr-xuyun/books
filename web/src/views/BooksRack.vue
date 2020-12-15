<template>
  <div class="booksrack">
        <van-nav-bar
        title="我的书架"
        >
        <template #right>
            <van-icon name="search" size="18" color="green" @click="serach"></van-icon>
        </template>
      </van-nav-bar>
      <!-- 收藏的书架 -->
      <div style="margin-bottom:50px;" v-if="bookshelf.length>0" >
       <van-row  v-for="(item ,index) of bookshelf" :key="index" >
        <van-card
          :title="item.bookname"
          :thumb="item.coverimage"
          @click="details(item.bid)"
        />
      </van-row> 
      </div>
      <div style="text-align:center; margin-top:50px;" v-else>
          <img src="../assets/kongshujia.png" alt="">
          <h3 style="color:#cfdcd0; margin-top:10px">书架空空如也~ ~</h3>
      </div>
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
      return {
          bookshelf:[],
           urlImg:"http://localhost:9090/coverimage/",
           active1:1,
          
      }
    },
    methods:{
        serach(){
           this.$router.push("/search")
        },
        //我自己书架的详情页
        details(bid){
             this.$router.push("/detail?bid="+bid)
        }
    },
    mounted(){
       let uid = sessionStorage.getItem("uname")
       console.log(uid);
        this.axios.get("/bookshelf?uid="+uid).then(res=>{
           for(let item of res.data){
               this.bookshelf.push(item)
           }
        })
     
}
    }
   
</script>

<style scoped>
  .detailImg{
    width: 80px;
    height: 107px;
 
 }
</style>


