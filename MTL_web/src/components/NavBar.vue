<template>
    <div class="navbar">
        <ul class="nav_list">
          <li >
          <router-link to="/">首页</router-link>
        </li>
          <li v-for="(item,index) of navdata " :key="index">
            <router-link target="_blank"  :to="`/prolist/${item.fname_id}`">{{item.fname}}</router-link>
          </li>
        </ul>
      
    </div>
</template>
<script>
export default {
  data(){
    return{
      navdata:[]
    }
  },
  mounted(){
    this.axios.get('/navbar').then(res=>{
      let data=res.data.result;
      data.forEach(item=> {
        this.navdata.push(item)
      });    
    });
  }
}
</script>
<style scoped>
    .navbar{
        width: 1160px;
        margin: 47px auto;
    }
    .nav_list{
        list-style: none;
        overflow: hidden;
        font-size: 20px;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        
    }
    .nav_list a{
        text-decoration: none;
        color: #323038;
    }
    .nav_list>li a:hover{
        color: #ff4381;
    }
</style>