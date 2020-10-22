// var createError = require('http-errors');
var express = require('express');
// var path = require('path');
// var cookieParser = require('cookie-parser');
// var logger = require('morgan');

// var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var productsRouter = require('./routes/products');
var bannerRouter = require('./routes/banner');
var zttjRouter = require('./routes/zttj');
var navbarRouter = require('./routes/navbar');


//引入body-parser模块
const bodyParser=require('body-parser');

const cors = require('cors');


var app = express();
//在路由器之前，应用body-parser中间件，将post请求的数据解析为对象

app.use(bodyParser.urlencoded({extended:false}));


app.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080']
}));


app.listen(3030);
// 挂载
// app.use('/index', indexRouter);
app.use('/users', usersRouter);
app.use('', productsRouter);
app.use('', bannerRouter);
app.use('', zttjRouter);
app.use('', navbarRouter);


// catch 404 and forward to error handler
// app.use(function(req, res, next) {
//   next(createError(404));
// });

// error handler
// app.use(function(err, req, res, next) {
//   // set locals, only providing error in development
//   res.locals.message = err.message;
//   res.locals.error = req.app.get('env') === 'development' ? err : {};

//   // render the error page
//   res.status(err.status || 500);
//   res.render('error');
// });


// app.listen(3000,()=>{
//   console.log('server is running...');
// });
// module.exports = app;