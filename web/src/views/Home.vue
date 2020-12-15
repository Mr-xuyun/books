<template>
  <div class="home">
    <!-- 底部选项卡 -->
    <van-nav-bar
     title="书城" 
    >
     <template #right>
        <van-icon name="search" size="18" color="green" @click="search"></van-icon>
     </template>
    </van-nav-bar>
   
    <!-- 中间的内容 -->
    <van-tabs  v-model="active" swipeable animated color="green">
      <van-tab v-for="(item,i) of tabArr " :key="i" :title="item">
           <!-- 滚播图    -->
          <van-swipe :autoplay="3000">
            <van-swipe-item v-for="(image,index) of imgs" :key="index">
                <img :src="image" class="imgs">
            </van-swipe-item>
           </van-swipe>
           <h2 style="border-bottom:1px solid #999; color:#444;">{{item}}</h2>
          <!-- 首页书籍内容 -->
          <div class="newBooks" v-for="(item,index) of books" :key="index" @click="detail(item.bid)">
             <div>
                <img :src="item.coverimage"  style="" >
             </div>
             <div class="content"  >
                 <h2 class="title">{{item.bookname}}</h2> 
                 <h4 class="subject">{{item.intro}}</h4>
                 <p class="author"> 作者:{{item.author}}</p>
             </div>
          </div>
      </van-tab>
    </van-tabs>
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
  data() {
    return {
      books:[],
      tabArr: ["最新榜", "热搜榜", "留存榜", "好评榜"],
      active: 0,
      imgs:["http://localhost:9090/swiper/e0fff4e6235ace1d1073da0fb02fbb2b.jpeg","http://localhost:9090/swiper/ba7a26c9fc8f9d8d6a04e5c29733e3db.jpeg",
      "http://localhost:9090/swiper/2498db9597ba8d110db0ffa20b41404c.jpeg",
      "http://localhost:9090/swiper/ab7c5fe1ce047d8725e12a49718c7046.jpeg"
      ],
      active1:0
    }
  },
  mounted(){
     this.axios.get("/book?bid=1").then(res=>{
        for(let item of res.data ){
          //图片如果不为空的话
            if(item.coverimage!=null){
               item.coverimage=require("../assets/coverimage/"+item.coverimage)
               this.books.push(item)
            }
        }
         
     })
      
  },
  methods:{
       detail(bid){
          this.$router.push("/detail?bid="+parseInt(bid)); 
       },
      //跳转到搜索页面
      search(){
         this.$router.push("/search")
   }
  },
//选项卡切换时 跟新图书的页面
  watch:{
      active(){
         this.books=[];
          this.axios.get(`/book?bid=${this.active+1}`).then(res=>{
            for(let item of res.data ){
            //图片如果不为空的话
              if(item.coverimage!=null){
                item.coverimage=require("../assets/coverimage/"+item.coverimage)
                this.books.push(item)
              }
            }
         })
      }
  },

};
</script>
<style scoped>
.imgs{
    width: 100%;
    height: 150px
}
.newBooks{
   margin: 10px 5px;
   display:flex;
   border-bottom: 1px dashed #444;
   padding: 5px 0px;
}
.content{
   margin: 0px 5px;
   
}
.newBooks img{
  width: 80px;
  height: 107px;
}
.van-tabs__content--animated{
  margin-top: 50px;
}
.newBooks .subject{
   color: #999;
   margin: 10px 0px;
}
.newBooks .author{
    color:green;
}
.subject{
    width: 100%;
    display: -webkit-box;
  -webkit-box-orient: vertical;          
    -webkit-line-clamp: 3;
   overflow: hidden;
}
.van-tabs{
  margin-bottom: 50px;
}

</style>
  

