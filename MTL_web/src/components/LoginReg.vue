<template>
    <!-- <div class="login" v-show="login_show" > -->
    <div class="login" >
        <div class="login1">
            <div class="heade">
                <span @click="close">×</span>
                <img src="../assets/login-logo.png" >
            </div>
            <ul class="login_form" v-show="log_show">
                <li>
                    <input type="uname" placeholder="请输入用户名" v-model="uname">    
                </li>
                <li>
                    <input type="password" placeholder="请输入密码" v-model="upwd">
                </li>
                <li>
                    <button @click="login_click">登录</button>
                </li>
                <li @click="newReg">
                    <router-link to="/" class="new_reg" >新用户注册</router-link>
                </li>
                <li>
                    <p>未注册过的手机号将自动创建摩天轮账号，且代表您已同意 
                        <router-link to="/">《摩天轮用户隐私政策》</router-link>
                        和
                        <router-link to="/">《第三方商品平台交易服务协议》</router-link >
                    </p>
                </li>
            </ul>
             <ul class="reg_form" v-show="reg_show">
                <li>
                    <input v-model="username" type="text" placeholder="请输入6位以上用户名/手机号" @blur="uname_blur">
                    <div class="pd_icon" v-show="rt_icon">
                        <svg class="icon rt" aria-hidden="true">
                            <use xlink:href="#icon-zhengque"></use>
                         </svg>
                    </div>
                    <div class="pd_icon" v-show="er_icon">
                        <svg class="icon er" aria-hidden="true">
                            <use xlink:href="#icon-cuowu"></use>
                        </svg>
                    </div>
                    
                </li>
                <li>
                    <input type="password" placeholder="输入长度为8-16位密码" @blur="pwd_blur" v-model="pwd">
                    <div class="pwd_icon" v-show="pwd_rt_icon">
                        <svg class="icon rt" aria-hidden="true">
                            <use xlink:href="#icon-zhengque"></use>
                         </svg>
                    </div>
                    <div class="pwd_icon" v-show="pwd_er_icon">
                        <svg class="icon er" aria-hidden="true">
                            <use xlink:href="#icon-cuowu"></use>
                        </svg>
                    </div>
                </li>
                <li>
                    <input type="text" placeholder="输入手机号" @blur="phone_blur" v-model="phone">
                    <div class="phone_icon" v-show="phone_rt_icon">
                        <svg class="icon rt" aria-hidden="true">
                            <use xlink:href="#icon-zhengque"></use>
                         </svg>
                    </div>
                    <div class="phone_icon" v-show="phone_er_icon">
                        <svg class="icon er" aria-hidden="true">
                            <use xlink:href="#icon-cuowu"></use>
                        </svg>
                    </div>
                </li>
                <li>
                    <button @click="reg_click">注册</button>
                </li>
                <li>
                    <p>未注册过的手机号将自动创建摩天轮账号，且代表您已同意 
                        <router-link to="/">《摩天轮用户隐私政策》</router-link>
                        和
                        <router-link to="/">《第三方商品平台交易服务协议》</router-link >
                    </p>
                </li>
            </ul>
        </div>
    </div>   
</template>
<style >
    .login{
        position: fixed;
        width: 100%;height: 100%;
        background:rgba(0, 0, 0, 0.6);
        left: 0;
        top: 0;
        /* min-width: 1190px; */
        z-index: 8880;
    }
    .login1{
        position: fixed;
        left: 50%;
        top: 50%;
        z-index: 8881;
        width: 400px;
        min-height: 410px;
        margin: -225px 0 0 -200px;
        background-color: #fff;
        border-radius: 8px;
    }
    .heade>span{
        /* position: absolute; */
        margin-left: 360px;
        margin-top:10px ;
        font-size: 30px;
        font-weight: bolder;
        color:#999 ;
        cursor: pointer;

    }
    .heade>img{
        /* position: absolute; */
        width: 160px;
        margin-left:120px;
        margin-top: -10px;
    }
    .login_form>li,.reg_form>li{
        text-align: center;
        margin-top:20px ;
    }
    .login_form input,.reg_form input{
        width: 250px;height: 40px;
        box-sizing: content-box;
        padding: 0 15px;
        border: 1px solid #f7f7f7;
        color: #3c3c3c;
        border-radius: 8px;
        background: #f7f7f7;
        outline: 0;
    }
    .login_form button,.reg_form button{
        width: 282px;height: 40px;
        background-image: linear-gradient(to right,#ff4287 0,#ff4655 100%);
        border: 0;
        border-radius: 50px;
        outline: 0;
        color: #fff;
        font-size: 18px;
    }
    .login_form>li:nth-child(4){
        margin-top:5px;
    }
    .new_reg{
        font-size: 12px;
        color: #555;
        text-decoration: none;
        margin-right: -200px;
    }
    .login_form p,.reg_form p{
        text-align: left;
        width: 282px;
        font-size:13px;
        color:#979797;
        margin: 0 auto;
        margin-bottom: 30px;
    }
    .login_form p>a,.reg_form p>a{
        text-decoration: none;
        color:#006BFF ;
    }
    .pd_icon{
        position: fixed;
        margin-top:-30px;
        margin-left: 315px;
    }
    .pwd_icon{
        position: fixed;
        margin-top:-30px;
        margin-left: 315px;
    }
    .phone_icon{
        position: fixed;
        margin-top:-30px;
        margin-left: 315px;
    }
    .rt{
        font-size: 18px;
        color: green;
    }
    .er{
        font-size: 18px;
        color:red
    }
</style>
<script>
export default {
    data(){
        return{
            // login_show:true,    //登录注册框默认隐藏
            log_show:true,
            reg_show:false,
            er_icon:'',
            rt_icon:'',
            pwd_rt_icon:'',
            pwd_er_icon:'',
            phone_rt_icon:'',
            phone_er_icon:'',
            username:'',
            uname:'',
            upwd:'',
            pwd:'',
            phone:'',
            regusers:[]
        }
    },
    methods:{
        close(){
            this.$parent.login_show = false
        },
        uname_blur(){
            if(this.username!==""&&this.username.length>=6){
                // console.log(this.username)
                this.rt_icon=true;
                this.er_icon=false;
            }else {
                this.er_icon=true;
                this.rt_icon=false;
            }
        },
        pwd_blur(){
            if(this.pwd!==""&&(this.pwd.length>=8&&this.pwd.length<=16)){
                // console.log(this.pwd)
                this.pwd_rt_icon=true;
                this.pwd_er_icon=false;
            }else{
                this.pwd_er_icon=true;
                this.pwd_rt_icon=false;
            }
        },
        phone_blur(){
            let ph_regexp=/^1[3456789]\d{9}$/;
            if(this.phone!==""&&ph_regexp.test(this.phone)){
                // console.log(this.phone)
                this.phone_rt_icon=true;
                this.phone_er_icon=false;
               
            }else{
                this.phone_er_icon=true;
                this.phone_rt_icon=false;
            }
        },
        newReg(){
            this.log_show=false;
            this.reg_show=true;
        },
        reg_click(){
            this.axios.post('/users/register','uname='+this.username+'&upwd='+this.pwd+'&phone='+this.phone).then(res=>{
                let data=res.data.result;
                // console.log(res.data);
                if(res.data.code==1){
                    this.log_show=true;
                    this.reg_show=false;
                }else{
                    alert('该用户名已注册！')
                }
            })
        },
        login_click(){
            this.axios.post('/users/login','uname='+this.uname+'&upwd='+this.upwd).then(res=>{
                // 登录成功
                if(res.data.code==1){
                    this.login_show=false;
                }else{
                    alert('用户名或密码错误')
                }
            })
        }
    }
}
</script>