const  express = require("express");
//引入 fs 模块
const fs = require("fs");
//引入Mluter 模块
const multer =require("multer");
//引入 UUID模块
const uuid =require("uuid");

const router = express.Router();
//引入连接池
const pool = require("../pool");

let storage =multer.diskStorage({
     destination:function(req,file,cb){
          let path = "public/avatar"  
   //判断目录是否存在,如果不存在,则自动创建之
    if(!fs.existsSync(path)){
     fs.mkdirSync(path,(err)=>{
       throw err;
     });
   }
   cb(null,path);
},

     filename:function(req,file,cb){
          //获取上传文件的原始名称
          let originalname= file.originalname ;
          //获取文件的扩展名
          let extension = originalname.substr(originalname.lastIndexOf('.') + 1).toLowerCase();
          //生成唯一主文件名,基于时间
          let mainame = uuid.v1();
          //将主文件名与扩展名拼接在一起==>新的文件名称
          let filename = mainame + '.' + extension;
          //调用回调函数
           cb(null,filename)
     }
})
const upload = multer({storage:storage});



//首页选项卡 ,切换的路由
router.get("/book",(req,res)=>{
    //页码
    let bid = req.query.bid;
    //每页的数量
    let count= 15;
    //计算出页数
    let pages =(bid-1)*count;

    let sql=`select bid,bookname,author,bookfile,coverimage,intro from book limit ?,?`;
    pool.query(sql,[pages,count],(err,result)=>{
         if(err) throw err;
         res.send(result);
    })
})
//详情页的路由
 router.get("/detail",(req,res)=>{
    let bid = req.query.bid;
    let sql =`select bid,bookname,author,bookfile,coverimage,intro from book where bid=? `
    pool.query(sql,[bid],(err,result)=>{
        if (err) throw  err;
        res.send(result)
    })
 })

 //书架添加
 router.post("/booksrack",(req,res)=>{
        let  books =req.body;
        let bid =books.bid;
        let sql ="select *  from bookshelf where bid=?"
        pool.query(sql,[bid],(err,result)=>{
             if(err) throw err;
             if(result.length>0){
                 res.send("0")
             }
             else{
                let sql = `insert into  bookshelf set ?` ;
                pool.query(sql,[books],(err,result)=>{
                     if(err) throw err;
                     if(result.affectedRows>0){
                          res.send("1")
                     }else{
                         ren.send("失败")
                     }
                })
             }
        })

      

 })

//  用户收藏的书架
 router.get("/bookshelf",(req,res)=>{
     let uid = req.query.uid;
    // console.log(uid);
    let sql =" select * from  bookshelf  where uid=?";
    pool.query(sql,[uid],(err,result)=>{
         if(err) throw err 
         res.send(result);
    })
 })

 //用户的登录路由
 router.get("/login",(req,res)=>{
     let _phone = req.query.phone;
     let _upwd =req.query.upwd;
     let sql = "select * from user  where phone =? and upwd= ?"
     pool.query(sql,[_phone,_upwd],(err,result)=>{
           if(err) throw err;
           if(result.length>0){
                  res.send({code:1,result:result})
           }else{
                res.send({code:0})
           }
     })
 })

//用户的评论
router.get("/bookreview",(req,res)=>{
     let review = req.query
     let sql = ` insert into bookreview set ?`;
     pool.query(sql,[review],(err,result)=>{
          if(err) throw err;
          if(result.affectedRows>0){
               res.send({code:200})
          }else{
               res.send({code:300})
          }

       
     })
    

})
//获取每本书籍用户评论的内容
router.get("/comment",(req,res)=>{
      let  _bid = req.query.bid;

      console.log(_bid);
      let sql = ` select * from bookreview where bid=?`
      pool.query(sql,[_bid],(err,result)=>{
           if(err) throw err
           //循环遍历 每一个 评论的内容  { rid: 20, bid: 2, uid: 6, review: '阿松大', date: 0 },
          let arr=[];
          let arr1=result;
           if(result.length==0){
                res.send({code:404})
           }else{
               result.forEach((item,i)=>{
                    let uid = item.uid
                    let sql =`select  nickname,avatar from user where uid=?`
                    pool.query(sql,[uid],(err,result1)=>{
                        if(err) throw err;
                         let object = Object.assign(item,result1[0]);
                         arr.push(object);
                         if(i==arr1.length-1){
                               res.send(arr)
                         }
                    })
               })
           }
        
          
      })
})
//搜索的路由
router.get("/search",(req,res)=>{
     //  let _searchTxt =  req.query.searchTxt 
       let msg = decodeURI(req.query.searchTxt) ;
       var attr=msg.split(" ");
	for(var i=0;i<attr.length;i++){
		attr[i]="bookname like N'%"+attr[i]+"%'" 
	}
	var content =attr.join(" and ");
	let sql = "select * from book where "+content;
		pool.query(sql,(err,results)=>{
			if(err) throw err ;
			if(results.length>0){
				res.send({code:200,data:results})
			}else{
				res.send({code:201,data:'没有相关数据'})
			}
		})
       
})
//注册的路由
router.post("/reg",upload.single("file"),(req,res)=>{
     let imgURL= "/"+req.file.filename;
     let upwd = req.body.upwd;
     let phone =req.body.user;
     let nickname =req.body.nickname;

     let sql = `INSERT into  user VALUES(null,?,?,?,?)`
     let userSQL = "select * from  user where  phone=?"
     pool.query(userSQL,[phone],(err,result)=>{
           if(err) throw err ;
          if(result.length==0){
             pool.query(sql,[phone,upwd,imgURL,nickname],(err,result)=>{
                     if(err) throw err ;
                     if(result.affectedRows>0){
                          res.send({code:200})
                     }else{
                          res.send({code:404})
                     }
               })
          }else{
               res.send({code:404})
          }
     })

})
router.get("/login1",(req,res)=>{
      let fn = req.query.callback;
      console.log(fn);
     res.send(fn("222"))

})

router.get("/proxy",(req,res)=>{
     res.send("1")
})
router.get("/proxy2",(req,res)=>{
     res.send("2")
})





module.exports=router;

