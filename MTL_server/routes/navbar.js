const express=require('express');
//引入连接池模块
const pool=require('../pool.js');

// const bodyParser=require('body-parser');
//创建路由器对象
const r=express.Router();




//导航列表接口
r.get('/navbar',(req,res)=>{
  var sql="SELECT fname_id,fname FROM mtl_product_family";
  pool.query(sql,(error,result)=>{
    if(error) throw error;
    // console.log(result)
    res.send({result:result});
  })
});




//导出路由器对象
//要导出已存在的对象，只需把该对象赋给modul.exports
module.exports=r;