import Vue from 'vue'
import VueRouter from 'vue-router'
// import Login from  '../views/Login'
// import Reg from '../views/Reg'
import Index from '../views/Index'
import Prolist from '../views/prolist'
import Deteils from '../views/Deteils'
import Search from '../views/search'


Vue.use(VueRouter)

const routes = [
  {
    path: '/search/:text',
    name: 'Search',
    component: Search
  },
  {
    path: '/deteils/:pid',
    name: 'Deteils',
    component: Deteils
  },
  {
    path: '/prolist/:family_id',
    name: 'Prolist',
    component: Prolist
  },
  {
    path: '/',
    name: 'Index',
    component: Index
  }
  // {
  //   path: '/login',
  //   name: 'Login',
  //   component: Login
  // },
  // {
  //   path: '/reg',
  //   name: 'Reg',
  //   component: Reg
  // }
  // {
  //   path: '/login',
  //   name: 'Login',
    
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "login" */ '../views/Login.vue')
  // }
]

const router = new VueRouter({
  routes
})

export default router
