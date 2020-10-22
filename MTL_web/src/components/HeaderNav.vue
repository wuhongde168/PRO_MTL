<template>
  <div id="head">
      <div>
        <a href="#"><img src="../assets/logo-b17998409b.png" alt=""></a>
      </div>
      <div>
        <span>成都</span>
        <div></div>
      </div>
      <div class="search">
        <input type="text" placeholder="搜索明星、演出、场馆" v-model="search_text" @keyup.enter="keyup">
        <button @click="search()">搜索</button>
        <ul>
          <li><router-link to="#">解压脱口秀</router-link></li>
          <li><router-link to="#">爆笑感动话剧</router-link></li>
          <li><router-link to="#">成都</router-link></li>
          <li><router-link to="#">开心麻花回归</router-link></li>
          <li><router-link to="#">梵高星空</router-link></li>
        </ul>
      </div>
      <div class="right_nav">
        <div @mouseenter="enter" @mouseleave="leave">
          <router-link to="/" class="phone_nav"  >
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-shoujirenzheng"></use>
            </svg><span>手机端</span>
          </router-link>
        </div>
        <div  class="reg_nav">
          <svg class="icon icon1 reg_nav" aria-hidden="true">
            <use xlink:href="#icon-denglu"></use>
          </svg><span @click="logshow" class="reg_nav_text reg_nav">登录 / 注册</span>
        </div> 
        <div class="phone_m" v-show="isShow" @mouseenter="enter" @mouseleave="leave">
          <router-link to="/" >
            <img src="../assets/images/app.svg" >
          </router-link>
        </div>
      </div>
    </div>
    
</template>

<script>
  export default {
    data(){
      return{
        isShow:false,
        islongin:false,
        search_text:''
      }
    },
    methods:{
      enter:function(){
        this.isShow=true  
      },
      leave:function(){
        this.isShow=false
      },
      search(){
        this.$router.push({
          path: `/search/${this.search_text}`,
        });
        location.reload();
      },
      keyup(e){     
        if(e.keyCode==13){
          this.search()
        }
      },
     logshow(){
       this.$parent.login_show = true
     }
    },
    mounted(){

    }
  }
 
</script>

<style >
  .icon{
    font-size: 23px;
    cursor: pointer;
  }
  .icon1{
    color: #777;
    font-size: 25px;
  }
  #head{
    width: 1160px;
    margin: 25px auto;
    position: relative;
    display: flex;
  }
  #head>div>a>img{
    width:160px ;height: 70px;
    margin-right: 10px;
  }
  #head>div:nth-child(2)>span{
    position: absolute;
    display: inline-block;
    font-size: 20px;
    margin:0 10px ;
    margin-top:20px;
    cursor: pointer;
  }
  #head>div:nth-child(2)>div{
    margin: 30px 0 0 60px;
    border: 7px solid;
    border-color: black transparent transparent ;
  }
  .search{
    margin:auto auto;
  }
  .search>input{
    line-height: 36px;
    outline: 0;
    font-size: 12px;
    box-sizing: content-box;
    padding: 2px 0;
    width: 464px;
    padding-left: 30px;
    border-radius: 22px;
    height: 36px;
    text-shadow: 0 0 0 #777;
    -webkit-text-fill-color: transparent;
    background-color: #fff;
    border: 2px solid #ff4381;
  }
  .search>button{
    width:100px;height:44px;
    margin-left:-100px;
    position: absolute;
    border: 0;
    outline: 0;
    color: #fff;
    cursor: pointer;
    border-radius: 0 20px 20px 0;
    background: linear-gradient(to left,#ff4655,#ff4287);
    font-size: 14px;
    font-weight: 700;
  }
  .search>ul{
    list-style: none;
    margin-top:5px;
    margin-left: 32px;
  }
  .search>ul>li{
    float: left;
    margin-right: 12px;
    font-size: 12px;
  }
  .search>ul>li>a{
    color:#777;
    text-decoration:none;
  }
  .right_nav{
    font-size:13px;
    margin-top:18px;
  }
  .right_nav>div{
    float: left;
  }

  .right_nav>div:first-child{
    margin-right: 30px;
  }
  .right_nav a{
    color:#777;
    text-decoration: none;
  }
  .right_nav span{
    display:block;
    margin-left: 25px;
    margin-top: -22px;
    font-size: 12px;
    cursor: pointer;
  }
  .reg_nav_text{
    color:#777;
  }
  .phone_nav>span{
    margin-top:-20px;
  }
  .phone_nav:hover{
    color: #ff4287;
  }
  .reg_nav:hover{
    color: #ff4287;
  }
  .phone_m{
    position: absolute;
    margin-top: 28px;
    margin-left: -85px;
    background-color: #fff;
    box-shadow:  2px 0 3px 0 rgba(179, 179, 179, 0.3);
    border-radius: 5px;
    z-index:100;
  } 
  
</style>
