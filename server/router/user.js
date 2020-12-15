//引用连接池
const pool = require("../pool.js");
//引用模块 
const express= require("express");
// const jwt = require("../jwt.js");
//创建路由器
const router = express.Router();

//往路由器对象添加登录器路由
router.get("/login",(req,res)=>{
        var _uname =req.query.uname;
		var _upwd=req.query.upwd;
		console.log(_uname,_upwd);
		var sql = "select uname id from tm_user where uname=? and upwd=?"
	  pool.query(sql,[_uname,_upwd],(err,result)=>{
			if(err) throw err;
			if(result.length>0){
			   res.send({code:1,uname:result[0]["id"]})
				
			}else{
				res.send("0");
			}
		})
})
//注册用户的路由
router.post("/reg",(req,res)=>{
	var obj =req.body;
	var sql ="insert into tm_user set ? ";
	var sql1 ="select uname from tm_user where uname=?"
			pool.query(sql1,[obj.uname],(err,results)=>{
				  if(err) throw err;
				  if(results.length>0){
					  res.send("0")
				  }else{
					pool.query(sql,[obj],(err,result)=>{
						if(err) throw err ;
						if(result.affectedRows>0){
							res.send("1")
						}
					})
				  }
			})
})
//分页的路由
router.get("/list",(req,res)=>{
	//页码 
	 let page = req.query.page
	//每页的数量
	let count = 15;
	//计算出页数
	 let pages = (page - 1)*count
	 // sql 的分页
	let sql ="select subject,episode,image,content,cut from tm_article  limit ?,? "
	pool.query(sql,[pages,count],(err,results1)=>{
		if(err) throw err;
		res.send(results1)
	 
	
	})
})
//数据的查询的路由
router.get("/total",(req,res)=>{
	//查询有多少条数据
	let sqlCount="select subject,episode,image,content,cut from tm_article"
	pool.query(sqlCount,(err,results)=>{
		if(err) throw err
		//返回 数组的长度就是文章的数量,作为文章的页码数
		 res.send(results)
	  });
})

//搜索的路由
router.get("/search",(req,res)=>{
	//客户端搜索框查询的字符串
	let msg = decodeURI(req.query.searchStr) ;
	var attr=msg.split(" ");
	for(var i=0;i<attr.length;i++){
		attr[i]="subject like N'%"+attr[i]+"%'" 
	}
	var content =attr.join(" and ");
	let sql = "select subject,episode,cut,image,content from tm_article where "+content;
		pool.query(sql,(err,results)=>{
			if(err) throw err ;
			if(results.length>0){
				res.send({code:200,data:results})
			}else{
				res.send({code:201,data:'没有相关数据'})
			}
		})
})








module.exports=router;

