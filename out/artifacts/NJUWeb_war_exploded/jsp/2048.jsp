<%--
  User: ASUS
  Date: 2019/3/22
  Time: 16:06
  Keep it simple and stupid.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel=stylesheet href="../css/2048.css" type="text/css">
    <link rel=stylesheet href="../css/less.css" type="text/css">
    <script src="../js/game.js"></script>
    <script src="../js/touch-0.2.14.min.js"></script>
    <title>game</title>
</head>
<body>
<div class="main">
    <script>listenKey();</script>
    <div class="head">
        <p>2048</p>
    </div>
    <div class="score-1">
        成绩
        <input  type="button" value="0" class="butt1" id="score">
        步数
        <input  type="button" value="0" class="butt1" id="move">
    </div>
    <br>
    <input  type="button" value=" " class="butt" id="in1">
    <input  type="button" value=" " class="butt" id="in2">
    <input  type="button" value=" " class="butt" id="in3">
    <input  type="button" value=" " class="butt" id="in4">
    <br>
    <input  type="button" value=" " class="butt" id="in5">
    <input  type="button" value=" " class="butt" id="in6">
    <input  type="button" value=" " class="butt" id="in7">
    <input  type="button" value=" " class="butt" id="in8">
    <br>
    <input  type="button" value=" " class="butt" id="in9">
    <input  type="button" value=" " class="butt" id="in10">
    <input  type="button" value=" " class="butt" id="in11">
    <input  type="button" value=" " class="butt" id="in12">
    <br>
    <input  type="button" value=" " class="butt" id="in13">
    <input  type="button" value=" " class="butt" id="in14">
    <input  type="button" value=" " class="butt" id="in15">
    <input  type="button" value=" " class="butt" id="in16">
</div>
</body>
</html>