<template>
  <div>
    <div >
      <div class="de_top">
        <div class="de_top_pic">
          <img :src="pro[0].pic" alt="">
          <div class="inner_foot">
            <div class="browse">
              <img src="../assets/icons/browse.svg" alt="">
              <span>{{pro[0].pv}}</span><span>人浏览</span>
            </div>
            <div class="attention">
              <img src="../assets/icons/attention.svg" alt="">
              <span>{{pro[0].attention}}</span><span>人想看</span>
            </div>
          </div>
        </div>
        <div class="de_top_text">
          <p class="text_title">{{pro[0].titel}}</p>
          <span class="text_time">{{pro[0].act_time}}</span>
          <span class="text_adr">{{pro[0].act_site}}</span>
          <div class="text_sale">
            <span>优惠券:</span>
            <div class="text_sale_icon">
              <span class="yd_l"></span>
              <span class="sale_con">新用户注册即送166元红包</span>
              <span class="yd_r"></span>
              <router-link to="/" >领取</router-link>
            </div>
          </div>
          <!-- <p class="text_yssm">【预售说明】本节目尚在预售中，平台卖家将在节目主办方正式开票后第一时间为用户配票寄送。由于演出票务特殊性，预售订单一经下单，不接受无理由退款</p> -->
          <p class="text_yssm">{{pro[0].presell}}</p>
          <div class="text_cc">
            <span class="text_t">选择场次</span>
            <div class="text_cc_icon">
              <p class="text_tim">2020.12.20 周日 20:00 
                <span class="text_ys">预售中</span>
              </p>
            </div>
          </div>
          <!-- <div class="text_pm">
            <span class="text_t">选择票面</span>
            <div id="pm_cart" class="text_pm_cart" >
    
              <span id="pm_cart_price" class="text_pm_price">{{pro[0].price}}</span>
              <span>普通票</span>
              <span  id="pm_cart_dz" class="text_pm_dz"><span>电子票</span></span>
            </div>
            <div id="text_pm_vip" class="text_pm_vip">
              <span id="text_pm_vipprice" class="text_pm_vipprice">680</span>
              <span>VIP</span>
              <span id="text_pm_dz" class="text_pm_dz">电子票</span>
            </div>
          </div> -->
          <div class="text_num">
            <span class="text_t">选择数量</span>
            <span id="subm" class="sub" @click="sub()"></span>
            <input class="buy_num" value="1" v-model="buy_num">
            <span  class="add" @click="add()"></span>
            <p class="text_num_zs">同一订单3张及以内保证连座</p>
          </div>
          <div class="text_sum">
            <span class="text_t">合计</span>
            <span class="text_sum_price">{{pro[0].price*buy_num}}</span><span class="text_sum_dw">元</span>
            <span class="text_sum_price2">{{pro[0].price}}</span><span class="text_sum_dw2">元/张</span>
          </div>
          <button class="but">立即预定</button>
        </div>
      </div>
        
    </div>
    <div class="de_bot">
      <div class="de_bot_left">
        <ul class="left_nvabar">
          <li><router-link to="/" >演出介绍</router-link></li>
          <li><router-link to="/" >购买流程</router-link></li>
          <li><router-link to="/" >观演须知</router-link></li>
        </ul>
        <div class="left_con">
          <p class="con_title">演出介绍</p>
          <img src="../assets/deteils/DkXQa8fXcd_.jpg" alt="">
          <img src="../assets/deteils/6pEW4dxCx6_.jpg" alt="">
          <img src="../assets/deteils/kYZcfBE3mF_.jpg" alt="">

          <p class="con_title">网上订购流程</p>
          <img src="../assets/deteils/20201020195650.png" alt="">
          <p class="con_title">观演须知</p>
          <img src="../assets/deteils/20201020200126.png" alt="">
        </div>
      </div>
      <div class="de_bot_right">
        <p class="right_nvabar">扫码下载</p>
        <div class="app_ma">
          <div class="app_ma_text">
            <p>摩天轮APP</p>
            <p>低至6元抢门票0元抽门票</p>
          </div>
          <img src="../assets/appewm-cf869fbaba.png" alt="">
        </div>
        
        <p class="right_nvabar">相关演出</p>
        <div class="more">
          <!-- 循环列表 -->
          <div class="more_con" v-for="(prod,index) of pors_xg.slice(0,6)" :key="index">
            <img :src="prod.pic" alt="">
          
            <div class="more_text">
              <router-link target="_blank" :to='`/deteils/${prod.pid}`' class="more_tit">{{prod.titel}}</router-link>    
              <p class="more_tim">{{prod.act_time}}</p>
              <p class="more_addr">{{prod.act_site}}</p>
            </div>
          </div>


        </div>
      </div>
    </div>

  </div>
</template>
<script>
export default {
  data(){
    return{
      buy_num:1,
      price:380,
      pro:[],
      pors_xg:[]
    }
  },
  methods:{
    sub(){
      if(this.buy_num>1){
        this.buy_num--;
        if(this.buy_num<=1){
          document.getElementById("subm").className = "sub";
        }

      }
    },
    add(){
      this.buy_num++;
      if(this.buy_num>1){
        document.getElementById("subm").className = "sub1";
      }
    }
  },
  mounted(){
    let pid = this.$route.params.pid;
      this.axios.get(`/product?pid=${pid}`).then(res=>{
        let data = res.data.result;
        data.forEach(item=> {
          if(item.pic!==null){
            item.pic = require('../assets/hot_s/' + item.pic);
            this.pro.push(item)
          }
        });
      });
    //产品列表
    this.axios.get('/products').then(res=>{
      let data=res.data.result;
      data.forEach(item=> {
        if(item.pic!==null){
          item.pic = require('../assets/hot_s/' + item.pic);
          this.pors_xg.push(item)
        }
      }); 
    });
  }
}
</script>
<style scoped>
.de_bot_right{
  width: 290px;
  margin-left: 30px;
}
.right_nvabar{
  font-size: 30px;
  margin-bottom: 16px;
}
.app_ma{
  display: flex;
  padding: 40px 0 50px 30px;
  border-radius: 14px;
  background-color: #fff;
  box-shadow: 0 0 20px 0 #eee;
  border: 1px solid #eee;
  margin-top: 18px;
  margin-bottom: 40px;
  height: 83px;
  padding: 19px;
  text-align: left;
}
.app_ma_text>p:first-child{
  display: inline-block;
  color: #323038;
  font-size: 18px;
  margin: 10px 0 0 0;

}
.app_ma_text{
  display: inline-block;
  color: #95949d;
  font-size: 14px;
  line-height: 1.5;
}
.app_ma img{
  width: 85px;
}
.more{
  padding: 20px 0 20px 20px;
  border-radius: 14px;
  background-color: #fff;
  box-shadow: 0 0 20px 0 #eee;
  border: 1px solid #eee;
  margin-top: 18px;
}
.more_con{
  display: flex;
  margin-bottom: 20px;
}
.more_con img{
  width: 70px;height: 90px;
  margin-right: 10px;
  border-radius: 5px;
}
.more_tit{
  width: 145px;height: 36px;
  line-height: 18px;
  display: inline-block;
  overflow: hidden;
  margin-bottom: 5px;
}
.more_text a,.more_text p{
  font-size: 12px;
  color: #494949;
  text-decoration: none;
}
.more_text p{
  margin-bottom: 2px;
  color:#777 ;
}
/*de_top背景及图等部分 */
.de_top{
  display: flex;
  width: 1110px;
  height: 450px;
  margin: 0 auto;
  border: 1px solid red;
  padding: 40px 0 50px 30px;
  border-radius: 14px;
  background-color: #fff;
  box-shadow: 0 0 20px 0 #eee;
  margin-bottom: 40px;
  border: 1px solid #eee;
}
.de_top_pic{
  display: inline-block;
  position: relative;
  top: 0;
  left: -48px;
  cursor: default;
}
.de_top_pic>img{
  width: 250px;height: 350px;
  border-radius: 5px;
  background-color: #fff;
  box-shadow: 0 4px 16px 0 #ccc;
}
.inner_foot{
  display: flex;
  margin: 20px 30px;
}
.inner_foot img{
  width: 18px;
  margin: 0 5px;
}
.inner_foot span{
  font-size: 12px;
  color: #777777;
  display: inline-block;
  margin-top: -10px;
  vertical-align:middle
}
.attention{
  margin-left: 5px;
}
.de_top_text{
  width: 770px;
}
.text_title{
  font-size: 26px;
  color: #331612;
  line-height: 40px;
}
.text_time,.text_adr{
  font-size: 14px;
  color: #68676c;
  margin-right: 20px;
}
.text_sale{
  font-size: 14px;
  color: #68676c;
  display: flex;
  margin: 20px 0;
}
.text_sale_icon{
  margin-top: -3px;
  margin-left:30px;
  position: relative;
}
.yd_l,.yd_r{
  position: absolute;
  display: inline-block;
  border-radius: 30px;
  width: 13px;height: 13px;
  background:#fff;
  margin-top: 6px;
  margin-left: -7px;
}
.yd_l{
  margin-left: -6px;
}
.sale_con{
  display: inline-block;
  font-size: 12px;
  color: #fff;
  padding: 5px 20px;
  border-radius: 3px;
  background-image:linear-gradient(to left,#ff4655,#ff4287) ;
}
.text_sale_icon>a{
  margin-left: 20px;
  font-size: 16px;
  color: #ff4287;
  text-decoration: none;
}
.text_yssm{
  font-size:14px ;
  color: #95949D;
  margin-bottom: 30px;
}
.text_t{
  font-size: 16px;
  color: #68676C;
  margin-right: 20px;
}
.text_cc{
  display: flex;
  width: 300px;
  height: 40px;
  margin:20px 0;
}
.text_cc_icon{
  padding: 0 6px;
  border-radius: 3px;
  background: #ffe8ec;
  height:40px;
  margin-top: -10px;
}
.text_tim{
  font-size: 14px;
  font-weight: 700;
  color: #ff1d41;
  display: block;
  margin-block-start:0.8em;
  margin-block-end: 1em;
}

.text_ys{
  font-weight: 300;
  font-size: 12px;
  color: #ff4655;
  margin-left: 5px;
  padding: 1px 1px;
  border-radius: 3px;
  border: 1px solid #ff1d41;
}
.text_pm{
  display: flex;
  margin: 20px 0;
}
.text_pm_cart{
  padding: 0 6px;
  border-radius: 3px;
  background: #ffe8ec;
  height:40px;
  margin-top: -10px;
  margin-right:10px;
}
.text_pm_vip{
  padding: 0 6px;
  border-radius: 3px;
  background: #f6f6f6;
  height:40px;
  margin-top: -10px;
  margin-right:10px;
}
.text_pm_price{
  font-size: 14px;
  font-weight: 700;
  color: #ff1d41;
  display: inline-block;
  margin-block-start:0.8em;
  margin-block-end: 1em;
}
.text_pm_vipprice{
  font-size: 14px;
  color: #323038;
  display: inline-block;
  margin-block-start:0.8em;
  margin-block-end: 1em;
}
.text_pm_dz{
  font-weight: 300;
  font-size: 12px;
  color: #576bff;
  margin-left: 5px;
  padding: 1px 1px;
  border-radius: 3px;
  border: 1px solid #ccd2ff;
}
.text_num,.text_sum{
  margin: 20px 0;
}
.text_num_zs{
  display:block;
  margin: 10px 0 0 85px;
  line-height: 17px;
  font-size: 12px;
  color: #fb5200;
}
.sub{
  display: inline-block;
  width: 34px;height:34px ;
  background-position: 0 0;
  background-size: 100% 100%;
  background-repeat: no-repeat;
  vertical-align:middle;
  background-image: url(../assets/icons/reduce-btn-disable-3f8fe6b506.png);
}
.sub1{
  display: inline-block;
  width: 34px;height:34px ;
  background-position: 0 0;
  background-size: 100% 100%;
  background-repeat: no-repeat;
  vertical-align:middle;
  background-image: url(../assets/icons/reduce-btn-f420e4c8e8.png);
}
.add{
  display: inline-block;
  vertical-align:middle;
  width: 34px;height:34px ;
  background-position: 0 0;
  background-size: 100% 100%;
  background-repeat: no-repeat;
  background-image: url(../assets/icons/add-btn-9eddd304e9.png);
}
.buy_num{
    width: 36px;height: 34px;
    font-size: 18px;
    text-align: center;
    color: #ff6a69;
    border: none;
    outline-style: none;
    overflow: visible;
}
.text_sum_price{
  margin-left:30px;
  font-size: 26px;
  color: #ff4655;
  line-height: 34px;
}
.text_sum_dw{
  font-size: 12px;
  color: #ff4655;
  margin-right:10px;
}
.text_sum_price2,.text_sum_dw2{
  font-size: 12px;
  color: #4a4a4a;
}
.but{
  border: none;
  padding: 0;
  margin: 0;
  outline-style: none;
  position: relative;
  width: 180px;
  line-height: 44px;
  font-size: 18px;
  font-weight: 500;
  color: #fff;
  text-align: center;
  cursor: pointer;
  height: 44px;
  border-radius: 44px;
  margin-top:50px;
  margin-left: 80px;
  background-image: linear-gradient(to left,#ff4a00,#ff7600)
}
.de_bot{
  display: flex;
  width: 1110px;
  margin: 0 auto;
  /* justify-content: space-between; */
}
.left_nvabar{
  display: flex;
  margin: 10px 0 20px 0;
}
.left_nvabar a{
  text-decoration: none;
  font-size: 20px;
  color: #323038;
  margin-right: 100px;
}
.left_con{
  width: 800px;
  border: 1px solid red;
  padding: 40px 0 50px 30px;
  border-radius: 14px;
  background-color: #fff;
  box-shadow: 0 0 20px 0 #eee;
  margin-bottom: 40px;
  border: 1px solid #eee;
  text-align: center;
}
.left_con img{
  width: 600px;
  border-radius: 10px;
}
.con_title{
  font-size: 14px;
  font-weight: 600;
  margin: 10px 0;
}
</style>