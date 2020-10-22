<template>
    <div class="footer">
        <ul class="footer_l">
            <li>
                <img class="footer_logo" src="../assets/logo-b17998409b.png" alt="">
            </li>
            <li>
                <ul class="list">
                    <li>帮助中心</li>
                    <li>预售演出</li>
                    <li>关于座位</li>
                    <li>配送方式</li>
                    <li>无票赔付</li>
                    <li>订票提示</li>
                </ul>
            </li>
            <li>
                <ul class="list">
                    <li>关于我们</li>
                    <li>联系我们</li>
                    <li>大事记</li>
                    <li>公司介绍</li>
                    <li>问题反馈</li>
                    <li>隐私政策</li>
                </ul>
            </li>
            <li>
                <ul class="list">
                    <li>支付方式</li>
                    <li>支付宝</li>
                    <li>微信支付</li>
                </ul>
            </li>
            <li>
                <ul class="list">
                    <li>关注我们</li>
                    <li>微信公众号</li>
                </ul>
            </li>
            <li>
                <ul class="contact_list ">
                    <li>10102266</li>
                    <li>周一至周日9:00 - 21:00</li>
                    <li class="contact"><p>联系客服</p></li>
                </ul>
            </li>
        </ul>
        <div class="footer_b">
            <div class="icp">
                <span>Copyright©2015-2020 上海锐赏文化传播有限公司 All Rights Reserved | </span>
                <router-link to="script:;">沪ICP备17026590号-1</router-link>
            </div>
            <div class="card">
                <router-link to="script:;">营业执照 | </router-link>
                <router-link to="script:;">营业性演出许可证 | </router-link>
                <router-link to="script:;">增值电信业务经营许可证</router-link>
            </div>
            <div class="gongshang">
                <router-link to="script:;">
                    <img src="..//assets/footer/gongshang.png" alt="">上海工商
                </router-link>
                <router-link to="script:;">
                    <img src="..//assets/footer/gonganwangbei-d0289dc0a4.png" alt="">沪公网安备 31010402004599号
                </router-link>

            </div>
        </div>
    </div>
</template>
<style scoped>
    .footer{
        position: relative;
        display: flex;
    }
    .footer_logo{
        width: 160px;height: 70px;
    }
    .footer_l{
        margin: auto auto ;
        display: flex;
    }
    .footer_l>li{
        width: 170px;
    }
    .footer_l>li:first-child{
        margin-right: 100px;
    }
    .list>li:first-child{
        font-size: 14px;
        font-weight: 700;
        color:#494949;
        margin-bottom:8px ;
        
        
    }
    .list>li{
        font-size: 12px;
        color:#494949;
        margin-bottom:8px ;
    }
    .list>:not(:first-child):hover{
        cursor: pointer;
        color: #ff4381;
    }
    .contact_list>li:first-child{
        font-size: 20px;
        margin-bottom:8px ;
        font-weight: 300;
    }
    .contact_list>:not(first-child){
        font-size: 13px;
        margin-bottom:10px ;
        font-weight: 500;
    }
    .contact{
        width: 92px;height: 26px;
        border: 1px solid #ff4381;
        border-radius: 30px;
    }
    .contact>p{
        font-size: 12px;
        margin: 5px 22px;
        color: #ff4381;
        display: block;
    }
    .footer_b{
        position: absolute;
        margin-top: 200px;
        width: 100%;
        font-size: 12px;
        margin-bottom: 30px;
    }
    .icp{
        color: #494949;
        text-align: center;
        margin-bottom:20px;
    }
    .footer_b a{
        color:#494949;
	    text-decoration: none;        
    }
    .card,.gongshang{
        text-align: center;
    }
    .gongshang>a{
        display: inline-block;
    }
    .gongshang>a:first-child>img{
        width: 20px;
        margin-top:3px;
    }
    .gongshang>a:last-child>img{
        width: 15px;
        margin-left: 20px;
    }
</style>