<%--
  User: ASUS
  Date: 2019/3/25
  Time: 17:56
  Keep it simple and stupid.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Flappy Bird</title>
    <link rel="stylesheet" href="../css/flappy-bird.css" media="screen" type="text/css" />
</head>
<body>
    <embed src="../sound/Bird.mp3" hidden="true" autostart="true" loop="true"/>
    <div id="canvasContainer"></div>
    <span id="textInputSpan">
        Your name () :
    <input id="textInput" maxlength="10" type="text" width="150" value="CYH"/>
        <button onclick="changeText()">Fly!</button>
    </span>
    <div style="text-align:center;clear:both">
        <script src="/gg_bd_ad_160x600_R.js" type="text/javascript"></script>
        <script src="/follow.js" type="text/javascript"></script>
    </div>
    <script src="../js/flappy-bird.js"></script>
</body>
</html>