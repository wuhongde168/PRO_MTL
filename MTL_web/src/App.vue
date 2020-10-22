<template>
  <div id="app">
    <LoginReg v-show="login_show"/>
    <HeaderNav/>
    <NavBar/>
    <!-- <Banner/> -->
    <router-view/>
    <Footer/>
  </div>
</template>


<style>
/*此处设置页面公样式  */
  *{margin: 0;padding: 0;}
  ul{
    list-style: none;
  }

</style>
<script>
export default {
  data(){
    return{
      login_show:false
    }
  }
}
</script>