<template>
<div>
  <div class="container" >
    	    <div class="swiper-container top-container" >
     	 <div class="swiper-wrapper" style="margin-top:10px;">
       	 <div class="swiper-slide imgs" v-for="(item,index) of 	lunbodata" :key="index" style="width:1150px height:430px;">
           	 <img :src="item.pic" class="w-100">
        </div>
        <!-- <div class="swiper-button-prev" style="margin-left:21%"></div> -->
        <!--左箭头。如果放置在swiper-container外面，需要自定义样式。-->
        <!-- <div class="swiper-button-next" style="margin-right:21%"></div> -->
        <!--右箭头。如果放置在swiper-container外面，需要自定义样式。-->
      	</div>
      <div class="swiper-pagination"></div>
    	</div>
  </div>
  <div id="" class="index">
    <div class="f1">
      <div class="f1_left">
        <div class="title">
          <span class="title_b">近期热门</span>
          <router-link to="" class="title_s">查看更多</router-link>
        </div>
        <div class="contents">
          <div class="content" v-for="(hot_pro,index) of hot_pros.slice(0,8)"
            :key="index">
            <img :src='hot_pro.pic' alt="">
            <p><router-link target="_blank" :to='`/deteils/${hot_pro.pid}`'>{{hot_pro.titel}}</router-link></p>
            <span class="price">{{hot_pro.price}}</span><span>元起</span>
          </div>
        </div>
      </div>
      <div class="f1_right">
        <div class="title">
          <span class="title_b">人气TOP5</span>
          <router-link to="/" class="title_s">查看更多</router-link>
        </div>
        <div>
          <ul>
            <li class="no1">
                <span class="num">1</span>
              <router-link to="/" >
                <img src="../assets/hot_s/FZx6cs5n5S_.png" alt="">
                <div class="con_right">
                  <p class="title_r1">【成都站】孟京辉城市浸没剧《成都偷心》</p>
                  <p>2020.10.16 19:30</p>
                  <p>域上和美先锋剧场</p>
                </div>
              </router-link>
            </li>
            <li class="no2">
                <span class="num">2</span>
              <router-link to="/" >
                <div class="con_right2">
                  <p class="title_r1">【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》</p>
                  <p>2020.10.17 15:30</p>
                  <p>东郊记忆·咖喱小剧院</p>
                </div>
              </router-link>
            </li>
            <li class="no2">
                <span class="num">3</span>
              <router-link to="/" >
                <div class="con_right2">
                  <p class="title_r1">【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》</p>
                  <p>2020.10.17 15:30</p>
                  <p>东郊记忆·咖喱小剧院</p>
                </div>
              </router-link>
            </li>
            <li class="no2">
                <span class="num">4</span>
              <router-link to="/" >
                <div class="con_right2">
                  <p class="title_r1">【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》</p>
                  <p>2020.10.17 15:30</p>
                  <p>东郊记忆·咖喱小剧院</p>
                </div>
              </router-link>
            </li>
            <li class="no2">
                <span class="num">5</span>
              <router-link to="/" >
                <div class="con_right2">
                  <p class="title_r1">【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》</p>
                  <p>2020.10.17 15:30</p>
                  <p>东郊记忆·咖喱小剧院</p>
                </div>
              </router-link>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="f2">
      <div class="title">
        <span class="title_b">折扣专区</span>
        <router-link to="/" class="title_s">查看更多</router-link>
      </div>
      <div class="contents">
        <div class="content" v-for="(sale_pro,index) of sale_pros.slice(0,6)"  :key="index" >
          <img :src="sale_pro.pic" alt="">
          <p><router-link target="_blank" :to='`/deteils/${sale_pro.pid}`'>{{sale_pro.titel}}</router-link></p>
          <span class="price">{{sale_pro.price}}</span><span>元起</span>
        </div>

      

      </div>
      <div class="f2">
        <div class="title">
          <span class="title_b">演唱会</span>
          <router-link v-for="(concert,index) of concerts.slice(0,1)" :key="index" :to='`/prolist/${concert.family_id}`' class="title_s">查看更多</router-link>
        </div>
        <div class="concert2">
          <div class="concert2_left">
            <router-link v-for="(concert,index) of concerts.slice(0,1)" :key="index" :to='`/deteils/${concert.pid}`'>
              <img src="../assets/concert/HcN3nErWJi_.jpg" alt="">
              <p>【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节</p>
            </router-link>
          </div>

          <div class="concert2_right">
            <div class="concert2_r_1" v-for="(concert,index) of concerts.slice(0,6)"  :key="index"   >
              <router-link  :to='`/deteils/${concert.pid}`'>
                <div>
                  <img :src="concert.pic" alt="">
                </div>
                <div class="concert2_r_c">
                  <p>{{concert.titel}}</p>
                  <p>{{concert.act_time}}</p>
                  <p>{{concert.act_site}}</p>
                  <span class="price">{{concert.price}}</span><span>元起</span>
                </div>
              </router-link>
            </div>
            
          

          </div>
        </div>
      </div>

      <div class="f7">
          <div class="title">
            <span class="title_b">专题推荐</span>
            <router-link to="/" class="title_s">查看更多</router-link>
          </div>
          <div class="f7_content">

            <div class="zttj" v-for="(item,index) of 	zttj.slice(0,3)" :key="index">
              <router-link to="/">
                <img :src="item.pic" alt="">
                <p class="zttj_t">{{item.title}}</p>
                <p class="zttj_c">{{item.content}}</p>
              </router-link>
            </div>
          </div>  
           
      </div>
      <div class="footer_icon">
        <ul >
          <li>
           <img src="../assets/footer/assurance-bg-0007cd6678.png" alt="">
          </li>
          <li>
           <img src="../assets/footer/companions-3aa1317ab0.png" alt="">
          </li>
        </ul>
      </div>
    </div>
      
    </div>
  </div>
</div>
</template>
<script>
import Swiper from 'swiper/swiper-bundle.js'
import SwiperCss from 'swiper/swiper-bundle.css'
import { swiper, swiperSlide } from 'vue-awesome-swiper'
export default {
  data(){
    return{
      lunbodata:[], //轮播
      products:[],   //存储返回的商品信息
      hot_pros:[],
      sale_pros:[],
      concerts:[],     //存演唱会数据
      zttj:[]

    }
  },
  methods: {
        carouselScroll(){
            let mySwiper = new Swiper(".top-container",{
                    effect : 'fade',
                    navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                autoplay:{
                    disableOnInteraction:false,
                },
                slidesPerView: 1,
                loop: true,
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
            });
        }
    },
  mounted(){
    //轮播图
    this.axios.get("/banner").then(res=>{
            let data = res.data.result;
            //给图片重新命名
            data.forEach(item=>{
                if(item.pic!= null){
                    item.pic = require("../assets/banner/" + item.pic);
                }
                this.lunbodata.push(item);
            });
            this.$nextTick(function () {  //l轮播图初始化函数carouselScroll一定要放在$nextTick回调中执行
                this.carouselScroll();
            }) 
        })

    //产品列表
    this.axios.get('/products').then(res=>{
      let data=res.data.result;
      data.forEach(item=> {
        if(item.ishot==1){
          item.pic = require('../assets/hot_s/' + item.pic);
          this.hot_pros.push(item)
        }
      }); 
    });
    // 折扣
    this.axios.get('/products').then(res=>{
      let data=res.data.result;

      data.forEach(item=> {
        if(item.issale==1){
          item.pic = require('../assets/sale_s/' + item.pic);
          this.sale_pros.push(item);
        };
      });    
    });
    // 演唱会
    this.axios.get('/products').then(res=>{
      let data=res.data.result;
      data.forEach(item=> {
        if(item.family_id==10){
          item.pic = require('../assets/family/10-ych/' + item.pic);
          this.concerts.push(item);
        };
      });   
    });

    //专题推荐数据
    this.axios.get('/zttj').then(res=>{
      let data=res.data.result;
      data.forEach(item=> {
        if(item.pic!=null){
          item.pic = require('../assets/zttj/' + item.pic);
          this.zttj.push(item);
        };
      });    
    });




  }
}
</script>



<style scoped>
  .swiper-wrapper{
      text-align: center;
  }
  .imgs img{
      border-radius: 10px;
  }
  .swiper-container{
      --swiper-theme-color: #ff6600;/* 设置Swiper风格 */
      --swiper-navigation-color: #ddd;/* 单独设置按钮颜色 */
      --swiper-navigation-size: 30px;/* 设置按钮大小 */
  }
  .f1{
    display: flex;
    width: 1160px;
    margin: auto auto ;
  }
  .f1_left{
    width: 742.39px;
    margin-right: 50px;
  }
  .f1_right{
    width:353.8px;
  }
  .title{
    display: flex;
    justify-content: space-between;
    width: 100%;
  }
  .title_b{
    font-size: 30px;
    color:#331612;
    margin-top:-9px ;
  }
  .title_s{
    font-size: 20px;
    color:#ff4655;
    cursor: pointer;
    text-decoration: none;
  }
  .contents{
    display: flex;
    margin-top:30px;
    justify-content: space-between;
    flex-wrap: wrap;

  }
  .content{
    width: 150px;height: 300px;
    margin-bottom: 20px;
  }
  .content>img{
    width: 150px;height: 210px;
    border-radius: 3px;
  }
  .content>p{
    height: 40px;
    overflow: hidden;
    text-overflow: ellipsis;
    margin-top: 10px;
    margin-bottom: 5px;
  }
  .content a{
    font-size: 14px;
    color: #323038;
    border-radius: 3px;
    text-decoration: none;
  }
  .price{
    font-size: 20px;
    color:#ff4655;
    font-weight: 600;
    margin-right: 5px;
  }
  .content>span:last-child{
    color:#ff4655;
    font-size: 12px;
  }
  .no1{
    display: flex;
    /* justify-content: space-between; */
    margin-top: 30px;margin-bottom: 40px;
  }
  .num{
    display: inline-block;
    width:24px ;height: 24px;
    border-radius: 50px;
    background-color: #ff4655;
    color:#fff;
    font-size: 14px;
    text-align: center;
    line-height:24px;
    margin-right: 25px;
  }
  .no1 img{
    width: 80px;
    border-radius: 3px;
  }
  .no1 a,.no2 a{
    font-size: 14px;
    color: #323438;
    text-decoration: none;
  }
  .con_right{
    width: 180px;
    margin-top: -115px;
    margin-left: 120px;
  }
  .con_right>p:not(:first-child){
    font-size: 12px;
    color: #777777;
    line-height: 20px;
  }
  .title_r1{
    margin-bottom: 15px;
  }
  .no2{
    display: flex;
    margin-top: 20px;
  }
  .con_right2{
    width: 280px;
  }
  .con_right2>p:first-child{
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    margin-bottom: 5px;
  }
  .con_right2>p:not(:first-child){
    font-size: 12px;
    color: #777777;
    line-height: 20px;
  }
  .f2{
    width: 1160px;
    margin: 80px auto ;
  }
  .concert2{
    display: flex;
    /* margin-top:30px; */
    
  }
  .concert2 a{
    font-size: 14px;
    color: #323438;
    text-decoration: none;
  }

  .concert2_left img{
    margin-top:35px;
    height:350px ;
    border-radius: 3px;
  }
  .concert2_left p{
    display: flex;
    margin-top: -55px;
    color: #fff;
    width: 230px;
    margin-left: 10px;
    line-height: 20px;
  }
  .concert2_right{
    width: 900px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    
  }
  .concert2_r_1{
    margin-top:40px;
    height: 151px;
    /* margin-bottom: 30px; */
  }
  .concert2_r_1 a{
    display: flex;
  }
  .concert2_r_1 img{
    width: 110px;
    border-radius: 3px;
    margin: 0 15px 0 30px;
  }
  .concert2_r_c{
    width: 135px;
    white-space: wrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  .concert2_r_c>p:first-child{
    height: 38px;
    overflow: hidden;
    margin-bottom: 18px;
  }
  .concert2_r_c>p:not(:first-child){
    width: 135px;
    white-space:nowrap;
    font-size: 14px;
    color:#777777;
    overflow: hidden;
    text-overflow: ellipsis;
  }
  .f7_content{
    width: 1160px;
    margin-top: 30px;
    display: flex;
    justify-content: space-between;

  }
  .zttj img{
    width: 363px;
    border-radius: 5px;
  }
  .zttj>a{
    text-decoration: none;
  }
  .zttj_t{
    font-size: 16px;
    color: #323038;
    margin-top: 5px;
  }
  .zttj_c{
    font-size: 14px;
    color: #95949d;
  }
  .footer_icon{
    width: 1160px;
    text-align: center;
    margin-top: 80px;
  }
  .footer_icon>ul>li:first-child img{
    width: 1160px;
  }
  .footer_icon>ul>li:last-child img{
    width: 758px;
  }
  .index{
    margin: 60px auto;
  }
</style>

