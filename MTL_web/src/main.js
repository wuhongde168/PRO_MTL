import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
// 引入HeaderNav 
import HeaderNav from "./components/HeaderNav"
import NavBar from "./components/NavBar"
import LoginReg from "./components/LoginReg"
import Banner from "./components/banner"
import Footer from "./components/footer"

import axios from "axios"

// 引入vueAwesomeswiper 轮播图
import VueAwesomeswiper from 'vue-awesome-swiper'
Vue.use(VueAwesomeswiper)
// axios.defaults.baseURL="http://xzserver.applinzi.com"

// axios.defaults.baseURL="http://localhost:5050"

// 如果在客户端使用http代理跨越，baseURL不要写真实的服务器地址，写http代替提供的接口地址的别名，比如：/api
// axios.defaults.baseURL="/api"

axios.defaults.baseURL = 'http://127.0.0.1:3030'
Vue.prototype.axios = axios;
Vue.config.productionTip = false

//声明全局组件
Vue.component("HeaderNav",HeaderNav)
Vue.component("NavBar",NavBar)
Vue.component("LoginReg",LoginReg)
Vue.component("Banner",Banner)
Vue.component("Footer",Footer)




// 引入iconfont.js/.css
import './iconfont/iconfont.js'
import './iconfont/iconfont.css'


Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
