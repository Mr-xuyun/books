<template>
     <div class="details">
       <van-nav-bar
        title="书城" 
        left-text="返回" left-arrow    @click-left="goBack"   
        >
        <template #right>
            <router-link to="/search">
                <van-icon name="search" size="18" color="green" ></van-icon>
            </router-link>
        </template>
      </van-nav-bar>
          <div v-for="(item,index) of books" :key="index">
           <div   class="content">
              <div >
                  <img :src="item.coverimage" alt="" class="detailImg">
              </div>
              <div class="books"  >
                 <h2 class="title">{{item.bookname}}</h2> 
                 <p class="author"> 作者:{{item.author}}</p>
               </div>
            </div>
             <p class="subject">{{item.intro}}</p>
          </div>
          <h2 style="border-bottom:1px solid #888;margin-bottom:10px">评论：</h2>
           <!-- 用户的评论的内容 -->
           <div v-if="review.length>0">
            <div v-for="(item ,index) of review" :key="index+200" style="display:flex;margin-bottom:20px ;border-bottom:0.5px dashed #444">
                <div>
                    <img style="widht:25px; height:25px; border-radius:50%" :src="avataraImg+item.avatar" alt="">
                    
                </div>
                <div >
                    <h4 style="margin-left:5px;">{{item.nickname}}</h4>
                    <p style="margin-top:9px; margin-left:9px; color:#999">{{item.review}}</p>
                    <p style="margin-top:10px">{{ item.date | date}}</p>
                </div>
                </div>
            </div>
            <h3 v-else style="color:red; text-align:center;margin-left:10px">暂无评论!!</h3>
            

            <!-- 用户评论的输入框 -->
            <van-field
                v-model="message"
                rows="2"
                autosize
                label="评论"
                type="textarea"
                maxlength="50"
                placeholder="请输入留言"
                show-word-limit
            />
             <van-button style="margin-left:80% ;margin-bottom:50px;" @click="send">发送</van-button>
          
          <!-- 底部 -->
          <van-tabbar class="tabbar" >
            <van-tabbar-item @click="add">
            <div ><img src="../assets/jiarushujia_01.svg" ></div>
                加入书架
            </van-tabbar-item>
            <van-tabbar-item >
                 <div ><img src="../assets/yuedu.svg"></div>
                开始阅读
            </van-tabbar-item>
           </van-tabbar>
     </div>
</template>

<script>
import { Toast } from 'vant';
import { log } from 'util';

export default {
     data(){
         return{
             books:[],
             urlImg:"http://localhost:9090/coverimage/",
             avataraImg:"http://localhost:9090/avatar",
             //书写评论的内容
             message:"",
             //每本书用户评论的所有内容
             review:[],
             
         }
     },
     methods:{
         goBack(){
            this.$router.go("-1")
         },
         //添加数据
         add(){
              let books = this.books[0];
              let uid  = sessionStorage.getItem("uname")
             this.axios.post(`/booksrack`,`bid=${books.bid}&bookname=${ books.bookname}&coverimage=${books.coverimage}&uid=${uid}`).then(res=>{
                    if(res.data==0){
                           Toast("此书籍已存在")   
                    }else{
                          Toast("成功添加书架")   
                    }
             })
     },
     //发送用户的评论
     send(){
         let uid = sessionStorage.getItem("uname");
         let bid = this.$route.query.bid 
         let review =this.message;
           if(this.message.trim()==""){
              Toast("内容不能为空")
              return
         }
        
         if(uid==null ){
              Toast("请先登录 才能评论")
         }else{
             let date = new Date();
             let time = date.getTime();
             this.axios.get(`/bookreview?bid=${bid}&uid=${uid}&review=${review}&date=${time}` ).then(res=>{
                    this.review=[];
                     if(res.data.code==200){
                    Toast("评论成功")
                     this.axios.get("/comment?bid="+bid).then(res=>{
                        for(let item of res.data){
                          this.review.push(item)
                        }
                    })
                     this.message=""
                     }else{
                          Toast("评论失败")
                 }
             })
         }
     }
  },
  mounted(){
        // 获取每本的详情内容
         let bid =this.$route.query.bid;
         this.axios.get("/detail?bid="+bid).then(res=>{
             for( let item of res.data){
                 item.coverimage = this.urlImg+  item.coverimage;
                 this.books.push(item)
             }
         })
          //书籍评论的内容
            this.axios.get("/comment?bid="+bid).then(res=>{
                    if(res.data.code==404){
                          this.review=[];
                    }else{
                        for(let item of res.data){
                            this.review.push(item)
                        }
                    }
            })
  }
}
</script>
<style scoped>
 .content{
     display: flex;
     border-bottom: 1px solid #999;
 }
 .detailImg{
    width: 80px;
  height: 107px;
 }
  .subject{
   color: #999;
   margin: 10px 0px;
   margin-bottom: 20px;
 }
 .content .author{
     color: green;
     margin-top:50px; 
 }
 .content .title{
     margin: 10px 2px;

     color: #666;
 }
 .details .tabbar{
     display: flex;
     flex-direction: row;
 }
 .van-tabbar-item--active{
     color: green;
     background-color:lightgreen; 
     border-radius: 5px;
     text-align: center;
 }
 .van-tabbar-item{

     text-align: center;
     color: green;
 }
 .van-cell{
     margin-top: 50px;
   

 }
 .van-cell::after{
       border: 1px solid #323233;  
 }
</style>


