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
    <script src="../js/game.js"></script>
    <link rel=stylesheet href="../css/2048.css" type="text/css">
    <title>game</title>
    <style>
        body {
            background-color: mediumpurple;
        }
        body .butt {
            height: 70px;
            width: 70px;
            background-color: purple;
            margin-bottom: 10px;
            border: 0;
            margin-right: 3px;
            border-radius: 5px;
            font-size: 25px;
        }
        body .main {
            text-align: center;
            padding-top: 100px;
        }
        body .main .head {
            color: darkslateblue;
            font-size: 50px;
            font-weight: 700;
            text-align: center;
        }
        body .main .score-1 {
            padding-top: 20px;
            font-size: 20px;
        }
        .neon {
            position: fixed;
            bottom: 10px;
            left: 32%;
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
            background: linear-gradient(45deg, dodgerblue, lightskyblue, cornflowerblue, skyblue, cornflowerblue);            mix-blend-mode: multiply;
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

        ul{
            list-style: none;
        }
        li{
            position: relative;
            padding-left: 30px;
            height: 36px;
            line-height: 36px;
        }
        li:after{
            content: "";
            display: inline-block;
            width: 20px;
            height: 20px;
            line-height: 20px;
            text-align: center;
            color: #FFF;
            background: #999999;
            text-align: center;
            position: absolute;
            left: 0;
            top: 8px;
        }
        li:first-child:after {content: "1";background: #FD8C84;}
        li:nth-child(2):after {content: "2";background: #FFCC99;}
        li:nth-child(3):after {content: "3";background: #7FD75A;}
        li:nth-child(4):after {content: "4";background: #CCCCFF;}
        li:nth-child(5):after {content: "5";background: #60C4FD;}
        li:nth-child(6):after {content: "6";}
        li:nth-child(7):after {content: "7";}
        li:nth-child(8):after {content: "8";}
    </style>
</head>
<body>
    <embed src="../sound/Sakura.mp3" hidden="true" autostart="true" loop="true">
<div class="main">
        <script>listenKey();</script>
        <div class="head">
            <p>2048</p>
        </div>
        <div class="score-1">
            Scores
            <input  type="button" value="0" class="butt1" id="score">
            Steps
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
    <figure class="neon">
        <p class="text2" data-text="Welcome,VingtDylan">Welcome,VingtDylan</p>
        <div class="gradient"></div>
        <div class="spotlight"></div>
    </figure>
</body>
</html>