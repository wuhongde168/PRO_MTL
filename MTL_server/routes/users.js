const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
const md5=require('md5');
// const bodyParser=require('body-parser');
//创建路由器对象
const r=express.Router();

// r.use(bodyParser.urlencoded({extended:false}));


// 用户注册接口
r.post('/register',(req,res)=>{
  // 接收用户以post方式提交的数据
  let username=req.body.uname;
	let password=req.body.upwd;
	let phone=req.body.phone;
  // console.log(username,password,phone)
  // 所以先需要检测用户名是否已经存在
  let sql='SELECT uid FROM mtl_user WHERE uname=?';
  pool.query(sql,[username],(error,results)=>{
    if(error)throw error;
    if(results.length==0){
      // 将相关的信息写入到xzqa_author表
      // 密码采用MD5方式加密
      sql='INSERT INTO mtl_user (uname,upwd,phone) VALUES(?,MD5(?),?)';
      pool.query(sql,[username,password,phone],(error,results)=>{
        if(error) throw error;
        res.send({message:'注册成功',code:1});
      });
    }else{
      // 产生合理的错误信息到客户端
      res.send({message:'注册失败',code:0});
    }
  })
});


// 用户登录接口
r.post('/login',(req,res)=>{
  let username=req.body.uname;
	let password=md5(req.body.upwd);
	console.log(password)
  // 现在要以输入的用户名和密码为条件进行查找
  let sql='SELECT uid,uname,phone FROM mtl_user WHERE uname=? AND upwd=?';
  pool.query(sql,[username,password],(error,results)=>{
    if(error) throw error;
    // 如果找到，则代表用户登录成功
    if(results.length==1){
      res.send({message:'登录成功',code:1,info:results[0]});
    }else{
      // 否则代表用户登录失败
      res.send({message:'登录失败',code:0});
    }
  })
})





//导出路由器对象
//要导出已存在的对象，只需把该对象赋给modul.exports
module.exports=r;