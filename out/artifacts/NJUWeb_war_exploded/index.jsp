<%--
  User: ASUS
  Date: 2019/3/20
  Time: 22:53
  Keep it simple and stupid.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>NJUWeb</title>
    <link rel="stylesheet" href="css/heart.css">
    <link rel="stylesheet" href="css/login.css">
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <style>
      body {
        margin: 0;
        background: url("images/bg.jpeg") no-repeat;
        background-size: 100%;
        z-index: -1;
      }
    </style>
  </head>
  <body>
    <div class="love"></div>
    <script src="js/heart.js"></script>

    <div class="container">
      <div class="row">
        <div class="col-md-offset-3 col-md-6">
          <form class="form-horizontal" action="Login" method="post">
            <span class="heading">用户登录</span>
            <div class="form-group">
              <input type="text" class="form-control" name="username" placeholder="用户名">
              <i class="fa fa-user"></i>
            </div>
            <div class="form-group help">
              <input type="password" class="form-control" name="password" placeholder="密码">
              <i class="fa fa-lock"></i>
              <%--<a href="#" class="fa fa-question-circle"></a>--%>
            </div>
            <div class="form-group">
              <div class="main-checkbox">
                <input type="checkbox" value="None" id="checkbox" name="check" />
                <label for="checkbox"></label>
              </div>
              <span class="text">记住我</span>
              <button type="submit" class="btn btn-default">立刻登录</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <p><a href="/jsp/QRCode.jsp" style="font-size: 40px; position: fixed;left: 400px;top: 300px; ">猜数字</a></p>
    <p><a href="/jsp/QRCode.jsp" style="font-size: 40px; position: fixed;left: 600px;top: 200px; ">跳转</a></p>
    <%--<p><a href="/html/2048.html" style="font-size: 40px; position: fixed;left: 800px;top: 300px; ">2048</a></p>--%>
    <p><a href="/jsp/2048.jsp" style="font-size: 40px; position: fixed;left: 1000px;top: 400px; ">2048</a></p>

  </body>
</html>
