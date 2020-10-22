const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
const md5=require('md5');
// const bodyParser=require('body-parser');
//创建路由器对象
const r=express.Router();

// 轮播接口
r.get('/banner',(req,res)=>{
  var sql="SELECT pic FROM mtl_banner ";
  pool.query(sql,(error,result)=>{
    if(error) throw error;
    // console.log(result)
    res.send({result:result});
  })
})







//导出路由器对象
//要导出已存在的对象，只需把该对象赋给modul.exports
module.exports=r;