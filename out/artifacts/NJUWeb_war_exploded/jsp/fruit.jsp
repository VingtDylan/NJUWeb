<%--
  User: ASUS
  Date: 2019/3/25
  Time: 18:04
  Keep it simple and stupid.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="A simple HTML5 Template">
    <meta name="viewport" content="width=device-width, height=device-height, user-scalable=no, initial-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="stylesheet" href="../css/fruit.css">
    <title>水果忍者</title>
    <script>document.createElement("canvas");</script>
    <style>
        .neon {
            position: fixed;
            bottom: 10px;
            left: 27%;
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

        .text2::before {
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
            background: linear-gradient(45deg, gray, grey, darkslategrey, darkslateblue, darkolivegreen);            mix-blend-mode: multiply;
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
    <div id="extra"></div>
    <canvas id="view" width="640" height="480"></canvas>

    <div id="desc">
        <div style="text-align:center;clear:both;">
            <script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
            <script src="/follow.js" type="text/javascript"></script>
        </div>
        <div id="browser"></div>
    </div>
    <script src="../js/fruit.js"></script>

    <figure class="neon">
        <p class="text2" data-text="Welcome,VingtDylan">Welcome,VingtDylan</p>
        <div class="gradient"></div>
        <div class="spotlight"></div>
    </figure>

</body>
</html>