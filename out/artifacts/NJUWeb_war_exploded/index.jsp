<%--
  User: ASUS
  Date: 2019/3/20
  Time: 22:53
  Keep it simple and stupid.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="jsp/error.jsp" %>
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

      .neon {
        position: fixed;
        bottom: 10px;
        left: 38%;
        text-align:center;
        overflow: hidden;
        user-select: none;
      }

      .text2 {
        color: darkblue;
        font-size: 45px;
        font-weight: bold;
        font-family: sans-serif;
        margin: 0;
        filter: brightness(2);
        background-color: #8B658B;
      }

      .text::before {
        content: attr(data-text);
        position: absolute;
        filter: blur(3px);
        mix-blend-mode: difference;
      }

      .gradient {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(45deg, darkred, brown, purple, darkslateblue, red);
        mix-blend-mode: multiply;
      }

      .spotlight {
        position: absolute;
        top: -200%;
        left: -100%;
        right: -100%;
        bottom: -200%;
        background: radial-gradient(circle, white, black 25%)
        center / 5% 5%;
        transform: rotate(45deg);
        mix-blend-mode: color-dodge;
        animation: light 10s linear infinite;
      }

      @keyframes light {
        to {
          transform: translate(25%, 25%);
        }
      }
    </style>
  </head>
  <body>
    <%--<div class="love"></div>--%>
    <%--<script src="js/heart.js"></script>--%>

    <div class="container">
      <div class="row">
        <div class="col-md-offset-3 col-md-6">
          <form class="form-horizontal" action="Login" method="post">
          <%--<form class="form-horizontal" action="jsp/showuser.jsp" method="post">--%>
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

    <figure class="neon">
      <p class="text2" data-text="Please log in">Please log in</p>
      <div class="gradient"></div>
      <div class="spotlight"></div>
    </figure>

    <p><a href="jsp/fruit.jsp" style="font-weight:700;color: purple;font-size: 30px; position: fixed;left: 30%;top: 30%; ">水果忍者</a></p>
    <p><a href="jsp/2048.jsp" style="font-weight:700;color: rebeccapurple;font-size: 30px; position: fixed;left: 60%;top: 30%; ">2048</a></p>
    <p><a href="jsp/flappy-bird.jsp" style="font-weight:700;color:darkslategray;font-size: 30px; position: fixed;left: 20%;top: 50%; ">flappy-bird</a></p>
    <p><a href="html/chess.html" style="font-weight:700;color: firebrick;font-size: 30px; position: fixed;left: 70%;top: 50%; ">象棋</a></p>

  </body>
</html>
