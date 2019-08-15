<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <style>
        *{padding:0;margin:0; font-family: "Proxima Nova","proxima-nova","Helvetica Neue",Helvetica,Arial,sans-serif !important;}
        html body{overflow: hidden;}
        body{
            background-image: url(back2.jpg);
            background-size: cover;
            background-repeat: no-repeat;
        }
        #box{
            width: 15px;
            height: 20px;
            position: fixed;
            left: 0;
            right: 0;
            top:0;
            bottom: 0;
            margin: auto;
            transform-style: preserve-3d;
            animation: go 90s linear infinite;
        }
        #box img{
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
        }
        #show{
            width: 300px;
            height: 100%px;
            margin: 1%;
            position: absolute;
            box-shadow: 10px 10px 5px #cc66FF;
            display: none;
        }
        #show img{
            width: 100%;
            height: 100%;
        }
        @keyframes go {
            0%{transform: rotateX(0deg) rotateY(0deg);}
            25%{transform: rotateX(45deg) rotateY(180deg);}
            50%{transform: rotateX(0deg) rotateY(360deg);}
            75%{transform: rotateX(-45deg) rotateY(540deg);}
            100%{transform: rotateX(0deg) rotateY(720deg);}

        }
    </style>
    <script>
        function IsPC() {
            var userAgentInfo = navigator.userAgent;
            var Agents = ["Android", "iPhone",
                "SymbianOS", "Windows Phone",
                "iPad", "iPod"];
            var flag = true;
            for (var v = 0; v < Agents.length; v++) {
                if (userAgentInfo.indexOf(Agents[v]) > 0) {
                    flag = false;
                    break;
                }
            }
            return flag;
        }
        if(!IsPC){
            $("body").css("background-image","url(phoneBack.jpg)");
        }
    </script>
</head>
<body>
<div id="box">

</div>
<div id="show">

</div>
<script type="text/javascript" src="jquery-3.1.1.min.js"></script>
<script src="camara.js"></script>
</body>
</html>
