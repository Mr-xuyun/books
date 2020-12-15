<template>
    <div class="search">
      <van-nav-bar
        title="搜索"
        left-text="首页"
        left-arrow
        @click-left="onClickLeft"
        
        />
      <van-search
        v-model="value"
        show-action
        placeholder="请输入书籍名称"
        @search="onSearch"
        >
        <template #action>
            <div @click="onSearch">搜索</div>
  </template>
</van-search>
  <!-- 搜索书籍内容 -->
         <div class="newBooks" v-for="(item,index) of books" :key="index" @click="details(item.bid)" >
             <div>
                <img :src=" urlImg+ item.coverimage "  style="" >
             </div>
             <div class="content"   >
                 <h2 class="title">{{item.bookname}}</h2> 
                 <h4 class="subject">{{item.intro}}</h4>
                 <p class="author"> 作者:{{item.author}}</p>
             </div>
          </div>
          <h3 v-if="books.length==0" style="color:red; text-align:center;">{{msg}}</h3>
    </div>
</template>
<script>
export default {
    data(){
        return {
            value:"",
            urlImg:"http://localhost:9090/coverimage/",
            books:[],
            msg:""
        }
    },
    methods:{
        onSearch(){
            this.books=[];
            let searchTxt = this.value ;
            this.axios.get("/search?searchTxt="+searchTxt).then(res=>{
                 if(res.data.code==200){
                    for(let item of res.data.data){
                        this.books.push(item)
                    }
                 }else{
                     this.msg="没有相关的书籍";
                 }
            })
        },
        onCancel(){
             
        },
        //左侧的返回主页
        onClickLeft(){
            this.$router.go(-1);
        },
        //搜索出来的书籍点击进去详情页
        details(bid){
              this.$router.push("/detail?bid="+bid)
        }
    }
    
}
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
</style>