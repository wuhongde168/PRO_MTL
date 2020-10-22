SET NAMES UTF8;
DROP DATABASE IF EXISTS mtl;
CREATE DATABASE mtl CHARSET=UTF8;
USE mtl;


/**用户信息**/
CREATE TABLE mtl_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    phone VARCHAR(16),
    user_name VARCHAR(8),
    gender  INT,      #性别  0-女  1-男
    address VARCHAR(64)   #住址
);
/**产品信息**/
CREATE TABLE mtl_product(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    family_id int NOT NULL,           #产品分类
    titel VARCHAR(128),
    pic VARCHAR(128),       #产品图   
    price   decimal(10,2),   #价格
    presell  VARCHAR(128),  #预售说明
    act_time VARCHAR(128),  #活动时间
    act_site VARCHAR(128),   #活动地点
    detail VARCHAR(3000),    #商品详情
    tic_state VARCHAR(10),   #售票状态  售票中、预售中、未开售、暂缺
    pv INT,                   #浏览数量
    attention INT,            #想看数量(多少人想看)
    isindex BOOL,             #是否首页显示
    issale BOOL,              #是否折扣
    ishot BOOL              #是否热门
);
/**产品分类**/
CREATE TABLE mtl_product_family(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fname_id INT,
    fname VARCHAR(64)           #产品分类
);

/**轮播图**/
CREATE TABLE mtl_banner(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(128)       #轮播图 
);

/**专题推荐**/
CREATE TABLE mtl_zttj(
    zid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(128),       #轮播图 
    title VARCHAR(128),     #标题
    content VARCHAR(128)    #内容
);



/******************查入商品数据***********************/

INSERT INTO mtl_product VALUES(null,10,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【成都站】「张杰/许巍」花五六中国民族原创音乐节','DPWNTPWjxB_.jpg',399,null,'2020.11.07-2020.11.08','成都蔚然花海',null,'售票中',12225,61,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【昆明站】「痛仰」《二十四城记》巡演 LVH1','ZW6PEsQxrn_.jpg',375,null,'2021.06.22 20:30','CH8冇独空间（完美店）',null,'售票中',18075,100,1,0,1);
INSERT INTO mtl_product VALUES(null,10,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【成都站】「张杰/许巍」花五六中国民族原创音乐节','DPWNTPWjxB_.jpg',399,null,'2020.11.07-2020.11.08','成都蔚然花海',null,'售票中',12225,61,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【昆明站】「痛仰」《二十四城记》巡演 LVH1','ZW6PEsQxrn_.jpg',375,null,'2021.06.22 20:30','CH8冇独空间（完美店）',null,'售票中',18075,100,1,0,1);
INSERT INTO mtl_product VALUES(null,10,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【成都站】「张杰/许巍」花五六中国民族原创音乐节','DPWNTPWjxB_.jpg',399,null,'2020.11.07-2020.11.08','成都蔚然花海',null,'售票中',12225,61,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【昆明站】「痛仰」《二十四城记》巡演 LVH1','ZW6PEsQxrn_.jpg',375,null,'2021.06.22 20:30','CH8冇独空间（完美店）',null,'售票中',18075,100,1,0,1);
INSERT INTO mtl_product VALUES(null,10,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【成都站】「张杰/许巍」花五六中国民族原创音乐节','DPWNTPWjxB_.jpg',399,null,'2020.11.07-2020.11.08','成都蔚然花海',null,'售票中',12225,61,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【昆明站】「痛仰」《二十四城记》巡演 LVH1','ZW6PEsQxrn_.jpg',375,null,'2021.06.22 20:30','CH8冇独空间（完美店）',null,'售票中',18075,100,1,0,1);
INSERT INTO mtl_product VALUES(null,10,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【成都站】「张杰/许巍」花五六中国民族原创音乐节','DPWNTPWjxB_.jpg',399,null,'2020.11.07-2020.11.08','成都蔚然花海',null,'售票中',12225,61,1,1,1);
INSERT INTO mtl_product VALUES(null,10,'【昆明站】「痛仰」《二十四城记》巡演 LVH1','ZW6PEsQxrn_.jpg',375,null,'2021.06.22 20:30','CH8冇独空间（完美店）',null,'售票中',18075,100,1,0,1);


INSERT INTO mtl_product VALUES(null,20,'【成都站】孟京辉城市浸没剧《成都偷心》','FZx6cs5n5S_.png',182,null,'2020.10.16-2020.10.31','域上和美先锋剧场',null,'售票中',6054,121,1,1,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》','n83Ed8M2n4_.jpg',70,null,'2020.10.17-2020.10.25','东郊记忆·咖喱小剧院',null,'售票中',5715,22,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】北京爆笑感动话剧《夜未央》','iBiFx3sshw_.png',99,null,'2020.10.14-2020.12.31','文殊坊初相遇剧场',null,'售票中',50895,263,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】孟京辉城市浸没剧《成都偷心》','FZx6cs5n5S_.png',182,null,'2020.10.16-2020.10.31','域上和美先锋剧场',null,'售票中',6054,121,1,1,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》','n83Ed8M2n4_.jpg',70,null,'2020.10.17-2020.10.25','东郊记忆·咖喱小剧院',null,'售票中',5715,22,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】北京爆笑感动话剧《夜未央》','iBiFx3sshw_.png',99,null,'2020.10.14-2020.12.31','文殊坊初相遇剧场',null,'售票中',50895,263,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】孟京辉城市浸没剧《成都偷心》','FZx6cs5n5S_.png',182,null,'2020.10.16-2020.10.31','域上和美先锋剧场',null,'售票中',6054,121,1,1,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》','n83Ed8M2n4_.jpg',70,null,'2020.10.17-2020.10.25','东郊记忆·咖喱小剧院',null,'售票中',5715,22,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】北京爆笑感动话剧《夜未央》','iBiFx3sshw_.png',99,null,'2020.10.14-2020.12.31','文殊坊初相遇剧场',null,'售票中',50895,263,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】孟京辉城市浸没剧《成都偷心》','FZx6cs5n5S_.png',182,null,'2020.10.16-2020.10.31','域上和美先锋剧场',null,'售票中',6054,121,1,1,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》','n83Ed8M2n4_.jpg',70,null,'2020.10.17-2020.10.25','东郊记忆·咖喱小剧院',null,'售票中',5715,22,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】北京爆笑感动话剧《夜未央》','iBiFx3sshw_.png',99,null,'2020.10.14-2020.12.31','文殊坊初相遇剧场',null,'售票中',50895,263,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】孟京辉城市浸没剧《成都偷心》','FZx6cs5n5S_.png',182,null,'2020.10.16-2020.10.31','域上和美先锋剧场',null,'售票中',6054,121,1,1,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》','n83Ed8M2n4_.jpg',70,null,'2020.10.17-2020.10.25','东郊记忆·咖喱小剧院',null,'售票中',5715,22,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】北京爆笑感动话剧《夜未央》','iBiFx3sshw_.png',99,null,'2020.10.14-2020.12.31','文殊坊初相遇剧场',null,'售票中',50895,263,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】孟京辉城市浸没剧《成都偷心》','FZx6cs5n5S_.png',182,null,'2020.10.16-2020.10.31','域上和美先锋剧场',null,'售票中',6054,121,1,1,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】【咖喱牛肉】绝对爆笑喜剧《无可救药》','n83Ed8M2n4_.jpg',70,null,'2020.10.17-2020.10.25','东郊记忆·咖喱小剧院',null,'售票中',5715,22,1,0,1);
INSERT INTO mtl_product VALUES(null,20,'【成都站】北京爆笑感动话剧《夜未央》','iBiFx3sshw_.png',99,null,'2020.10.14-2020.12.31','文殊坊初相遇剧场',null,'售票中',50895,263,1,0,1);


INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,1,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,1);
INSERT INTO mtl_product VALUES(null,30,'【成都站】「潘玮柏/Tizzy T/王以太」CNF国粉国际音乐节','HcN3nErWJi_.jpg',197,null,'2020.10.17-2020.10.18','中国西部国际博览城（成都）',null,'售票中',60360,161,1,0,0);

INSERT INTO mtl_product VALUES(null,40,'【成都站】第26届“蓉城之秋”吕思清《魔弓传奇》小提琴独奏音乐会','CFxfBC4yhM_.jpg',916,null,'2020.10.31 19:30','成都城市音乐厅-音乐厅',null,'售票中',300,2,1,1,0);
INSERT INTO mtl_product VALUES(null,40,'【成都站】赵鹏“行吟2020·橡皮”音乐会','cSREm2BMcS_.jpg',206,null,'2020.11.01 19:30 ','开心麻花·环球汇剧场',null,'售票中',1185,1,1,0,0);
INSERT INTO mtl_product VALUES(null,40,'【成都站】第26届“蓉城之秋”成都国际音乐季《天府秋韵》民族室内乐音乐会','6niyBk2ASj_.jpg',292,null,'2020.10.30 19:30',' 成都城市音乐厅-音乐厅',null,'售票中',60,0,1,0,0);
INSERT INTO mtl_product VALUES(null,40,'【成都站】第26届“蓉城之秋”吕思清《魔弓传奇》小提琴独奏音乐会','CFxfBC4yhM_.jpg',916,null,'2020.10.31 19:30','成都城市音乐厅-音乐厅',null,'售票中',300,2,1,1,0);
INSERT INTO mtl_product VALUES(null,40,'【成都站】赵鹏“行吟2020·橡皮”音乐会','cSREm2BMcS_.jpg',206,null,'2020.11.01 19:30 ','开心麻花·环球汇剧场',null,'售票中',1185,1,1,0,0);
INSERT INTO mtl_product VALUES(null,40,'【成都站】第26届“蓉城之秋”成都国际音乐季《天府秋韵》民族室内乐音乐会','6niyBk2ASj_.jpg',292,null,'2020.10.30 19:30',' 成都城市音乐厅-音乐厅',null,'售票中',60,0,1,0,0);
INSERT INTO mtl_product VALUES(null,40,'【成都站】第26届“蓉城之秋”成都国际音乐季《天府秋韵》民族室内乐音乐会','6niyBk2ASj_.jpg',292,null,'2020.10.30 19:30',' 成都城市音乐厅-音乐厅',null,'售票中',60,0,1,0,0);


INSERT INTO mtl_product VALUES(null,50,'【成都站】《奥特曼·宇宙之光》正版授权超实景儿童舞台剧','BpFcEXXsEE_.jpg',160,null,'2020.11.21-2020.11.22','成都国际剧院',null,'售票中',30915,10,1,0,0);
INSERT INTO mtl_product VALUES(null,50,'【成都站】彩色熊猫.裸眼3D全息儿童剧《白雪公主》-戛纳湾店','mKS3GS46E5_.png',100,null,'2020.10.17-2020.11.01','彩色熊猫剧场（成都 戛纳湾·印象）',null,'售票中',1830,2,1,0,0);
INSERT INTO mtl_product VALUES(null,50,'【成都站】彩色熊猫剧场.裸眼3D全息儿童剧《丑小鸭》-戛纳湾店','RAp5B6MyP3_.png',100,null,'2020.10.18-2020.10.31','彩色熊猫剧场（成都 戛纳湾·印象）',null,'售票中',1590,4,1,1,0);
INSERT INTO mtl_product VALUES(null,50,'【成都站】《奥特曼·宇宙之光》正版授权超实景儿童舞台剧','BpFcEXXsEE_.jpg',160,null,'2020.11.21-2020.11.22','成都国际剧院',null,'售票中',30915,10,1,0,0);
INSERT INTO mtl_product VALUES(null,50,'【成都站】彩色熊猫.裸眼3D全息儿童剧《白雪公主》-戛纳湾店','mKS3GS46E5_.png',100,null,'2020.10.17-2020.11.01','彩色熊猫剧场（成都 戛纳湾·印象）',null,'售票中',1830,2,1,0,0);
INSERT INTO mtl_product VALUES(null,50,'【成都站】彩色熊猫剧场.裸眼3D全息儿童剧《丑小鸭》-戛纳湾店','RAp5B6MyP3_.png',100,null,'2020.10.18-2020.10.31','彩色熊猫剧场（成都 戛纳湾·印象）',null,'售票中',1590,4,1,1,0);

INSERT INTO mtl_product VALUES(null,60,'【成都站】【胡沈员现代舞作品】《流浪Nomadic》2020中国巡演','AHSPrehW68_.png',445,'【预售说明】本节目尚在预售中，平台卖家将在节目主办方正式开票后第一时间为用户配票寄送。由于演出票务特殊性，预售订单一经下单，不接受无理由退款','2020.11.03 19:30','四川大剧院',null,'售票中',1785,20,1,0,0);
INSERT INTO mtl_product VALUES(null,60,'【成都站】【第26届“蓉城之秋”成都国际音乐季】舞剧《尘埃落定》','ikWjee2633_.png',162,null,'2020.11.22 19:30','四川大剧院',null,'售票中',330,2,1,0,0);
INSERT INTO mtl_product VALUES(null,60,'【成都站】【成都站】这就是街舞城市嘉年华','s6es3QybGY_.png',500,null,'2020.10.30 19:30',' ALIVE壹现场 Live House',null,'售票中',180,1,1,0,0);
INSERT INTO mtl_product VALUES(null,60,'【成都站】【胡沈员现代舞作品】《流浪Nomadic》2020中国巡演','AHSPrehW68_.png',445,'【预售说明】本节目尚在预售中，平台卖家将在节目主办方正式开票后第一时间为用户配票寄送。由于演出票务特殊性，预售订单一经下单，不接受无理由退款','2020.11.03 19:30','四川大剧院',null,'售票中',1785,20,1,0,0);
INSERT INTO mtl_product VALUES(null,60,'【成都站】【第26届“蓉城之秋”成都国际音乐季】舞剧《尘埃落定》','ikWjee2633_.png',162,null,'2020.11.22 19:30','四川大剧院',null,'售票中',330,2,1,0,0);
INSERT INTO mtl_product VALUES(null,60,'【成都站】【成都站】这就是街舞城市嘉年华','s6es3QybGY_.png',500,null,'2020.10.30 19:30',' ALIVE壹现场 Live House',null,'售票中',180,1,1,0,0);

INSERT INTO mtl_product VALUES(null,70,'【成都站】三和老爷车博物馆','DJMksf4Dax_.png',30,null,'2020.05.29-2020.12.31','成都三和老爷车博物馆',null,'售票中',330,2,1,0,0);
INSERT INTO mtl_product VALUES(null,70,'【成都站】梵高星空美术馆','D3zKpTDCEy_.png',49,null,'2020.01.01-2020.12.31','梵高星空美术馆',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,70,'【成都站】【复始】后传统艺术季','6pNNxysYkT_.png',78,null,'2020.09.20-2020.11.19','成都市东郊记忆-国际艺术展览中心',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,70,'【成都站】三和老爷车博物馆','DJMksf4Dax_.png',30,null,'2020.05.29-2020.12.31','成都三和老爷车博物馆',null,'售票中',330,2,1,0,0);
INSERT INTO mtl_product VALUES(null,70,'【成都站】梵高星空美术馆','D3zKpTDCEy_.png',49,null,'2020.01.01-2020.12.31','梵高星空美术馆',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,70,'【成都站】【复始】后传统艺术季','6pNNxysYkT_.png',78,null,'2020.09.20-2020.11.19','成都市东郊记忆-国际艺术展览中心',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,70,'【成都站】三和老爷车博物馆','DJMksf4Dax_.png',30,null,'2020.05.29-2020.12.31','成都三和老爷车博物馆',null,'售票中',330,2,1,0,0);
INSERT INTO mtl_product VALUES(null,70,'【成都站】梵高星空美术馆','D3zKpTDCEy_.png',49,null,'2020.01.01-2020.12.31','梵高星空美术馆',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,70,'【成都站】【复始】后传统艺术季','6pNNxysYkT_.png',78,null,'2020.09.20-2020.11.19','成都市东郊记忆-国际艺术展览中心',null,'售票中',60360,161,1,0,0);

INSERT INTO mtl_product VALUES(null,80,'【成都站】凡人喜剧脱口秀 – 周欣雨主打秀','czQS77PS4s_.jpg',67,null,'2020.10.24 19:30','凤求凰剧场',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,80,'【成都站】喜聚糖欢乐相声荟','t7mFjDfGRi_.png',39,null,'2020.10.07-2020.10.16','凤求凰剧场',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,80,'【成都站】2020年荟萃蓉城精品剧目惠民展演 京剧《折子戏》','QkDtXdQMEX_.jpg',63,null,'2020.10.24 19:30','成都城市音乐厅-戏剧厅',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,80,'【成都站】凡人喜剧脱口秀 – 周欣雨主打秀','czQS77PS4s_.jpg',67,null,'2020.10.24 19:30','凤求凰剧场',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,80,'【成都站】喜聚糖欢乐相声荟','t7mFjDfGRi_.png',39,null,'2020.10.07-2020.10.16','凤求凰剧场',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,80,'【成都站】2020年荟萃蓉城精品剧目惠民展演 京剧《折子戏》','QkDtXdQMEX_.jpg',63,null,'2020.10.24 19:30','成都城市音乐厅-戏剧厅',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,80,'【成都站】凡人喜剧脱口秀 – 周欣雨主打秀','czQS77PS4s_.jpg',67,null,'2020.10.24 19:30','凤求凰剧场',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,80,'【成都站】喜聚糖欢乐相声荟','t7mFjDfGRi_.png',39,null,'2020.10.07-2020.10.16','凤求凰剧场',null,'售票中',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,80,'【成都站】2020年荟萃蓉城精品剧目惠民展演 京剧《折子戏》','QkDtXdQMEX_.jpg',63,null,'2020.10.24 19:30','成都城市音乐厅-戏剧厅',null,'售票中',60360,161,1,0,0);


INSERT INTO mtl_product VALUES(null,90,'【成都站】【抢先预约】2019-2020赛季CBA联赛常规赛 四川五粮金樽主场赛事','HcN3nErWJi_.jpg',197,null,'时间待定','成都温江区体育馆',null,'未开售',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,90,'【成都站】2020 少年强·成都小勇士体能挑战赛','HcN3nErWJi_.jpg',null,null,'2020.10.18','新津·斑竹林',null,'已缺票',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,90,'【成都站】【抢先预约】2019-2020赛季CBA联赛常规赛 四川五粮金樽主场赛事','HcN3nErWJi_.jpg',197,null,'时间待定','成都温江区体育馆',null,'未开售',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,90,'【成都站】2020 少年强·成都小勇士体能挑战赛','HcN3nErWJi_.jpg',null,null,'2020.10.18','新津·斑竹林',null,'已缺票',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,90,'【成都站】【抢先预约】2019-2020赛季CBA联赛常规赛 四川五粮金樽主场赛事','HcN3nErWJi_.jpg',197,null,'时间待定','成都温江区体育馆',null,'未开售',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,90,'【成都站】2020 少年强·成都小勇士体能挑战赛','HcN3nErWJi_.jpg',null,null,'2020.10.18','新津·斑竹林',null,'已缺票',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,90,'【成都站】【抢先预约】2019-2020赛季CBA联赛常规赛 四川五粮金樽主场赛事','HcN3nErWJi_.jpg',197,null,'时间待定','成都温江区体育馆',null,'未开售',60360,161,1,0,0);
INSERT INTO mtl_product VALUES(null,90,'【成都站】2020 少年强·成都小勇士体能挑战赛','HcN3nErWJi_.jpg',null,null,'2020.10.18','新津·斑竹林',null,'已缺票',60360,161,1,0,0);



/******************查入分类数据***********************/

INSERT INTO mtl_product_family VALUES(null,10,'演唱会');
INSERT INTO mtl_product_family VALUES(null,20,'话剧歌剧');
INSERT INTO mtl_product_family VALUES(null,30,'本地生活');
INSERT INTO mtl_product_family VALUES(null,40,'音乐会');
INSERT INTO mtl_product_family VALUES(null,50,'儿童亲子');
INSERT INTO mtl_product_family VALUES(null,60,'舞蹈芭蕾');
INSERT INTO mtl_product_family VALUES(null,70,'展览休闲');
INSERT INTO mtl_product_family VALUES(null,80,'曲艺杂谈');
INSERT INTO mtl_product_family VALUES(null,90,'体育赛事');

/******************轮播数据***********************/

INSERT INTO mtl_banner VALUES(null,'5AP3SmjGzb_.jpg');
INSERT INTO mtl_banner VALUES(null,'cQBE3PHt6S_.jpg');
INSERT INTO mtl_banner VALUES(null,'nW6H76CaRM_.jpg');
INSERT INTO mtl_banner VALUES(null,'P225aZ3MCN_.jpg');
INSERT INTO mtl_banner VALUES(null,'pAmcGP5ACj_.jpg');

/******************专题推荐数据***********************/

INSERT INTO mtl_zttj VALUES(null,'4HicGX8GhW_.jpeg','摩天轮5周年庆','也没做啥大贡献，只是让你买票更方便');
INSERT INTO mtl_zttj VALUES(null,'aHcwN4QtZd_.jpg','“大师展”来了','艺术平行世界 洗礼2020');
INSERT INTO mtl_zttj VALUES(null,'ZHNeiQSrnr_.jpg','我是主角','怎么演？听我哒！');
INSERT INTO mtl_zttj VALUES(null,'5SdQ7hmrJG_.jpg','“您好，欢迎光临，C-929星球。”','都这么客气了，你不来？！');
INSERT INTO mtl_zttj VALUES(null,'4HicGX8GhW_.jpeg','摩天轮5周年庆','也没做啥大贡献，只是让你买票更方便');
INSERT INTO mtl_zttj VALUES(null,'aHcwN4QtZd_.jpg','“大师展”来了','艺术平行世界 洗礼2020');
INSERT INTO mtl_zttj VALUES(null,'ZHNeiQSrnr_.jpg','我是主角','怎么演？听我哒！');
INSERT INTO mtl_zttj VALUES(null,'5SdQ7hmrJG_.jpg','“您好，欢迎光临，C-929星球。”','都这么客气了，你不来？！');

