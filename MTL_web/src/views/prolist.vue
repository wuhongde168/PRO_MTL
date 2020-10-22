<template>
  <div >
    <div class="cont">
      <div class="filters">
        <div class="citys">
          <span>按城市：</span>
          <ul class="city_list">
            <li> <router-link to="/" >广安</router-link></li>
            <li><router-link to="/" >德阳</router-link></li>
            <li><router-link to="/" >成都</router-link></li>
            <li><router-link to="/" >绵阳</router-link></li>
            <li><router-link to="/" >遂宁</router-link></li>
            <li><router-link to="/" >乌鲁木齐</router-link></li>
            <li><router-link to="/" >拉萨</router-link></li>
            <li><router-link to="/" >西宁</router-link></li>
            <li><router-link to="/" >昆明</router-link></li>
            <li><router-link to="/" >丽江</router-link></li>
            <li><router-link to="/" >大理</router-link></li>
          </ul>
        </div>
        <div class="times">
          <span>按时间：</span>
          <ul class="time_list">
            <li><router-link to="/" >全部</router-link></li>
            <li><router-link to="/" >一周内</router-link></li>
            <li><router-link to="/" >一月内</router-link></li>
            <li><router-link to="/" >本周内</router-link></li>
            <li><router-link to="/" >按日历</router-link></li>
          </ul>
        </div>
      </div>
      <!-- 分类 -->
      <div class="sort">
        <ul>
          <li><router-link to="/" >近期执门</router-link></li>
          <li><router-link to="/" >最近开场</router-link></li>
          <li><router-link to="/" >折扣最优</router-link></li>
        </ul>
      </div>
      <div class="content_list">
        <!-- 循环内容 -->
        <div v-for="(plist,index) of prolists.slice(0,8)"  :key="index">
          <router-link target="_blank" :to='`/deteils/${plist.pid}`'  class="link_list">
            <div class="inner">
              <div class="inner_top">
                <img class="pic" :src="plist.pic" alt="">
                <div class="inner_t">
                  <p class="inner_title">{{plist.titel}}</p>
                  <p class="issell">售票中</p>
                  <div class="inner_b">
                    <div>
                      <p>{{plist.act_time}}</p>
                      <p>{{plist.act_site}}</p>
                    </div>
                    <div class="inner_price"> 
                      <span>{{plist.price}}</span><span>元起</span>
                    </div>
                  </div>
                </div>
              </div> 
              <div class="inner_foot">
                <div class="browse">
                  <img src="../assets/icons/browse.svg" alt="">
                  <span>{{plist.pv}}</span><span>人浏览</span>
                </div>
                <div class="attention">
                  <img src="../assets/icons/attention.svg" alt="">
                  <span>{{plist.attention}}</span><span>人想看</span>
                </div>
              </div>
            </div>
          </router-link>
        </div>


      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      prolists:[]   
    }
  },
  mounted(){
    let family_id = this.$route.params.family_id;
      this.axios.get(`/prolist?family_id=${family_id}`).then(res=>{
        let data = res.data.result;
        data.forEach(item =>{
          if(item.family_id==10){
            item.pic = require('../assets/family/10-ych/' + item.pic);
          }else if(item.family_id==20){
            item.pic = require('../assets/family/20-hjgj/' + item.pic);
          }else if(item.family_id==30&item.pic!=null){
            item.pic = require('../assets/family/30-bdsh/' + item.pic);
          }else if(item.family_id==40){
            item.pic = require('../assets/family/40-yyh/' + item.pic);
          }else if(item.family_id==50){
            item.pic = require('../assets/family/50-etqz/' + item.pic);
          }else if(item.family_id==60){
            item.pic = require('../assets/family/60-wdbl/' + item.pic);
          }else if(item.family_id==70){
            item.pic = require('../assets/family/70-zlxx/' + item.pic);
          }else if(item.family_id==80){
            item.pic = require('../assets/family/80-qyzt/' + item.pic);
          }else if(item.family_id==90){
            item.pic = require('../assets/family/90-tyss/' + item.pic);
          }
          this.prolists.push(item);
        });
      })
   
  }
}
</script>
<style scoped>

.cont{
  width: 1160px;
  margin: 30px auto;
}
.filters{
  width: 1160px;
  height: 210px;
  border: 1px solid #ededed;
  border-radius: 14px;
  font-size: 14px;
  color: #000000;
}
.citys,.times{
  display: flex;
  padding: 31px 0;
}
.city_list,.time_list{
  text-align: center;
  display: flex;
  width: 926px;
  flex-wrap: wrap;
  margin-top: -5px;
  
  
}
.citys>span,.times>span{
  width: 95px;
  display: block;
  padding: 0 5px 0 30px;
  box-sizing:border-box;
}
.city_list a,.time_list a{
  width: 90px;
  height: 28px;
  line-height: 28px;
  display: block;
  text-decoration: none;
  color: #494949;
}
.city_list a:hover,.time_list a:hover{
  color: #fff;
  background-image:linear-gradient(to left,#ff4655,#ff4287) ;
  border-radius:30px;
}
.sort{
  margin-top: 20px;
  height: 60px;
  width: 1160px;
  border: 1px solid #ededed;
  border-radius: 14px;
  font-size: 14px;
}
.sort>ul{
  display: flex;
}
.sort>ul li{
  display: inline-block;
  line-height: 60px;
}
.sort>ul li a{
  text-decoration: none;
  color: #000000;
  padding: 0 20px 0 30px;
}
.sort>ul li a:hover{
  font-weight: 600;
  color: #ff4655;
}
.content_list{
  width: 1160px;
  display: flex;
  flex-wrap: wrap;
  margin-top: 60px;
  justify-content: space-between;
}
.link_list{
  display: block;
  width: 555px;
  height: 326px;
  text-decoration: none;
  color: #331612;
}
.inner{
  margin-left: 28px;
  margin-top: 30px;
  margin-bottom: 60px;
  width: 525px;
  height: 234px;
  border-radius: 4px;
  background-color: #fff;
  box-shadow: 0 0 12px 0 #f0f0f0;
  border: 1px solid #f0f0f0;
  position: relative;
}
.pic{
  width: 150px;
  height: 210px;
  border-radius: 4px;
  position: absolute;
  box-shadow: 0 4px 16px 0 #ccc;
  float: left;
  position: relative;
  left: -28px;
  top: -30px;
}

.inner_top{
  display: flex;
}
.inner_t{
  width: 360px;
  margin-top: 15px;
}
.inner_title{
 font-size: 16px;
 line-height: 20px;
}
.issell{
  margin:10px 0 60px 0;
  width: 36px;
  padding: 0 5px 0 5px;
  color: #ff1d41;
  border: 1px solid #ff1d41;
  border-radius: 3px;
  font-size: 12px;
 line-height: 19px;
}
.inner_b{
  display: flex;
  font-size: 12px;
  color: #494949;
  justify-content: space-between;
}
.inner_b p:last-child{
  margin-top:4px;
}
.inner_price span{
  color: #ff1d41;
  line-height: 45px;
}
.inner_price span:first-child{
  font-size: 20px;
  font-weight: 700;
  margin-right: 5px;
}
.inner_foot{
  margin: 0 auto;
  margin-top: -20px;
  display: flex;
  width: 485px;
  border-top: solid 1px #efefef;
  font-size: 12px;
  color: #777777;
  padding-top: 8px;
}
.inner_foot img{
  width: 22px;
  margin: 0 5px;
}
.inner_foot span{
  display: inline-block;
  margin-top: -13px;
  vertical-align:middle
}
.attention{
  margin-left: 20px;
}

</style>