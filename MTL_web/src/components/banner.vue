<template>
    <div class="container" >
    	    <div class="swiper-container top-container" >
     	 <div class="swiper-wrapper" style="margin-top:10px;">
       	 <div class="swiper-slide imgs" v-for="(item,index) of 	lunbodata" :key="index" style="width:1150px height:430px;">
           	 <img :src="item.pic" class="w-100">
        </div>
        <div class="swiper-button-prev" style="margin-left:400px"></div><!--左箭头。如果放置在swiper-container外面，需要自定义样式。-->
        <div class="swiper-button-next" style="margin-right:400px"></div><!--右箭头。如果放置在swiper-container外面，需要自定义样式。-->
      	</div>
      <div class="swiper-pagination"></div>
    	</div>
  	</div>
  
</template>
<script>
import Swiper from 'swiper/swiper-bundle.js'
import SwiperCss from 'swiper/swiper-bundle.css'
import { swiper, swiperSlide } from 'vue-awesome-swiper'
export default {
    data() {
        return {
            lunbodata:[],   
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
    }
}
</script>
<style scoped>
.swiper-wrapper{
    text-align: center;
}
.imgs{
}
.imgs img{
    border-radius: 5px;
}
.swiper-container{
    --swiper-theme-color: #ff6600;/* 设置Swiper风格 */
    --swiper-navigation-color: #ddd;/* 单独设置按钮颜色 */
    --swiper-navigation-size: 30px;/* 设置按钮大小 */
}

</style>