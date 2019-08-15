<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <style>
    *{padding:0;margin:0; font-family: "Proxima Nova","proxima-nova","Helvetica Neue",Helvetica,Arial,sans-serif !important;}
    html body{overflow: hidden;}
    body{
        background-image: url(back1.jpg);
        background-repeat: no-repeat;
        background-size:cover;
    }
    .box{width:140px; height:200px; 
    transform-style:preserve-3d; 
    transform: perspective(400px) rotateY(45deg) rotateX(45deg); 
    position:relative; 
    margin:180px auto;
    }
    .box span{
        width:100px; height:150px; 
        position: absolute; 
        background:deepskyblue; 
        font-size:20px;
        text-align: center; 
        line-height:200px; 
        color:white;
        }
    .box span img{
        width: 100%;
        height: 100%;
    }
    #box{
            width: 280px;
            height: 400px;
            position: fixed;
            left: 0;
            right: 0;
            top:0;
            bottom: 0;
            margin: auto;
            transform-style: preserve-3d;
            transform: rotateX(0deg) rotateY(0deg);
            animation: go 45s linear infinite;
           }
        #box img{width: 150px;
                 height: 180px;
                 position: absolute;
                 left: 0;
                 top: 0;
        }
        #box img:nth-child(1){
            transform: rotateY(0deg) translateZ(450px);}
        #box img:nth-child(2){
            transform: rotateY(36deg) translateZ(450px);}
        #box img:nth-child(3){
            transform: rotateY(72deg) translateZ(450px);}
        #box img:nth-child(4){
            transform: rotateY(108deg) translateZ(450px);}
        #box img:nth-child(5){
            transform: rotateY(144deg) translateZ(450px);}
        #box img:nth-child(6){
            transform: rotateY(180deg) translateZ(450px);}
        #box img:nth-child(7){
            transform: rotateY(216deg) translateZ(450px);}
        #box img:nth-child(8){
            transform: rotateY(252deg) translateZ(450px);}
        #box img:nth-child(9){
            transform: rotateY(288deg) translateZ(450px);}
        #box img:nth-child(10){
            transform: rotateY(324deg) translateZ(450px);}
		@keyframes go {
		    0%{transform: rotateX(0deg) rotateY(0deg);}
		    25%{transform: rotateX(90deg) rotateY(180deg);}
		    50%{transform: rotateX(0deg) rotateY(360deg);}
		    75%{transform: rotateX(-90deg) rotateY(540deg);}
		    100%{transform: rotateX(0deg) rotateY(720deg);}
		
		}
  </style>
  <script>
    function r2n(n){
      return n*Math.PI/180
    }
    window.onload=function(){
        $(".box").hide();
      var oBox=document.getElementsByClassName('box')[0];
      var aS=document.getElementsByTagName('span');
      for(var i=0;i<aS.length;i++){
        aS[i].style.WebkitTransition='1s all ease '+(aS.length-i)*.1+'s';
        aS[i].style.WebkitTransform='rotateY('+i*360/aS.length+'deg)'+' translateZ(400px) '
      }
      var pos=[];
      var x=0;
      var y=0;
      var timer=null;
      var timer2=null;
      document.onmousedown=function(ev){
        timer=setInterval(function(){
          pos[0]=pos[2];
          pos[1]=pos[3];
          pos[2]=x;
          pos[3]=y;
        },30);
        var disx=ev.pageX-x;
        var disy=ev.pageY-y;
        document.onmousemove=function(ev){
          x=ev.pageX-disx;
          y=ev.pageY-disy;
          oBox.style.WebkitTransform=' perspective(800px)'+' rotateY('+x/3+'deg)'+'rotateX('+-y/3+'deg)';
        };
        document.onmouseup=function(){
          clearInterval(timer);
          var speedx=pos[2]-pos[0];
          var speedy=pos[3]-pos[1];
          timer2=setInterval(function(){
            x+=speedx;
            y+=speedy;
            oBox.style.WebkitTransform=' perspective(800px)'+' rotateY('+x/3+'deg)'+'rotateX('+-y/3+'deg)';
            speedx*=0.94;
            speedy*=0.94;
            if(Math.abs(speedx)<1)speedx=0;
            if(Math.abs(speedy)<1)speedy=0;
            if(speedx==0&&speedy==0){
              clearInterval(timer2)
            }
          },30);
          document.onmousemove=null;
          document.onmouseup=null;
        }
      };
      return false
    }
  </script>
</head>
<body>
<div class="box">
        <span><img src="1.jpg"/></span>
        <span><img src="2.jpg"/></span>
        <span><img src="3.jpg"/></span>
        <span><img src="4.jpg"/></span>
        <span><img src="5.jpg"/></span>
        <span><img src="6.jpg"/></span>
        <span><img src="7.jpg"/></span>
        <span><img src="8.jpg"/></span>
        <span><img src="9.jpg"/></span>
        <span><img src="10.jpg"/></span>
        <span><img src="11.jpg"/></span>
        <span><img src="12.jpg"/></span>
</div>
<div id="box">
        <img src="1.jpg">
        <img src="2.jpg">
        <img src="3.jpg">
        <img src="4.jpg">
        <img src="5.jpg">
        <img src="6.jpg">
        <img src="7.jpg">
        <img src="13.jpg">
        <img src="14.jpg">
        <img src="8.jpg">
    </div>
    <script type="text/javascript" src="jquery-3.1.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
        $("#box").click(function(){
            $(this).hide();
            $(".box").show();
        });
        $(".box").click(function(){
            $(this).hide();
            $("#box").show();
        });
    });
    </script>
</body>
</html>
