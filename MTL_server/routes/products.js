const express=require('express');
//引入连接池模块
const pool=require('../pool.js');

// const bodyParser=require('body-parser');
//创建路由器对象
const r=express.Router();




// 产品列表接口
r.get('/products',(req,res)=>{
  var sql="SELECT pid,family_id,titel,pic,price,act_time,act_site,issale,ishot FROM mtl_product ";
  pool.query(sql,(error,result)=>{
    if(error) throw error;
    // console.log(result)
    res.send({result:result});
  })
});
// 产品分类接口
r.get('/prolist',(req,res)=>{
  let fid=req.query.family_id;
  var sql="SELECT pid,family_id,titel,pic,price,act_time,act_site,pv,attention FROM mtl_product WHERE family_id=? ";
  pool.query(sql,[fid],(error,result)=>{
    if(error) throw error;
    // console.log(result)
    res.send({result:result});
  })
})
// 热卖产品分类接口
r.get('/prolisthot',(req,res)=>{
  let ishot=req.query.ishot;
  var sql="SELECT pid,family_id,titel,pic,price,act_time,act_site,pv,attention FROM mtl_product WHERE ishot=? ";
  pool.query(sql,[ishot],(error,result)=>{
    if(error) throw error;
    // console.log(result)
    res.send({result:result});
  })
})

// 商品详情接口
r.get('/product',(req,res)=>{
  let pid=req.query.pid;
  var sql="SELECT * FROM mtl_product WHERE pid=? ";
  pool.query(sql,[pid],(error,result)=>{
    if(error) throw error;
    // console.log(result)
    res.send({result:result});
  })
})

// 搜索接口
r.get('/search',(req,res)=>{
  let text=req.query.text;
  let str='%'+text+'%';
  var sql="SELECT * FROM mtl_product WHERE titel like ? ";
  pool.query(sql,[str],(error,result)=>{
    if(error) throw error;
    // console.log(result)
    res.send({result:result});
  })
})

//导出路由器对象
//要导出已存在的对象，只需把该对象赋给modul.exports
module.exports=r;