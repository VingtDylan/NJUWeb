<%--
  User: ASUS
  Date: 2019/6/5
  Time: 20:57
  Keep it simple and stupid.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome</title>
    <link rel="stylesheet" href="../css/heart.css">
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/logged.css">
    <style>
        body {
            margin: 0;
            /*background: url("../images/bg.jpeg") no-repeat;*/
            background-size: 100%;
            background-color:#8B658B;
            z-index: -1;
        }
    </style>
</head>
<body>
    <figure class="man">
        <div class="head"></div>
        <div class="body"></div>
        <div class="feet"></div>
    </figure>

    <div class="rabbit"></div>
    <div class="clouds"></div>

    <figure class="neon">
        <p class="text" data-text="Welcome,VingtDylan">Welcome,VingtDylan</p>
        <div class="gradient"></div>
        <div class="spotlight"></div>
    </figure>

    <p><a href="fruit.jsp" style="font-weight:700;color: purple;font-size: 30px; position: fixed;left: 30%;top: 30%; ">水果忍者</a></p>
    <p><a href="2048.jsp" style="font-weight:700;color: rebeccapurple;font-size: 30px; position: fixed;left: 57%;top: 30%; ">2048</a></p>
    <p><a href="flappy-bird.jsp" style="font-weight:700;color:darkslategray; font-size: 30px; position: fixed;left:20%;top: 55%; ">flappy-bird</a></p>
    <p><a href="../html/chess.html" style="font-weight:700;color: firebrick;font-size: 30px; position: fixed;left:70%;top: 55%; ">象棋</a></p>

</body>
