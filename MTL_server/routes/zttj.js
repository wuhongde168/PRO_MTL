const express=require('express');
//引入连接池模块
const pool=require('../pool.js');

// const bodyParser=require('body-parser');
//创建路由器对象
const r=express.Router();

// 专题推荐接口
r.get('/zttj',(req,res)=>{
  var sql="SELECT * FROM mtl_zttj";
  pool.query(sql,(error,result)=>{
    if(error) throw error;
    res.send({result:result});
  })
})


//导出路由器对象
//要导出已存在的对象，只需把该对象赋给modul.exports
module.exports=r;