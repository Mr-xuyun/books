//引入路由器user.js
const  bookRouter= require("./router/book.js");
//y引入express
const express= require("express");
//引入body-paser中间件
const bodyParser=require("body-parser");
//引用cors的中间件
const cors =require("cors");

 //引入jwt模块
//  const jwt = require("./jwt.js")

//创建服务器
 const app = express();
 //设置端口号
app.listen(9090)
//托管图片资源
app.use(express.static("public"))

// 将cors作为app的中间件使用

app.use(cors({
	origin:['http://127.0.0.1:8080','http://localhost:8080',"http://localhost:8081","http://127.0.0.1:80","http://localhost:80"]
}))


//应用bodyParser中间件 并挂载
app.use(bodyParser.urlencoded({
	extended:false
}));


app.use("/books",bookRouter);

console.log("服务器开启.监听端口号为9090");



