function fill(S2,size){
    var c1=0;
    for(var i=0;i<12;i++){

        S2[i].style.WebkitTransform='rotateY(0deg)'+
            ' rotateX('+c1+'deg)'+
            ' translateZ('+size+')';
        c1=c1+30;
    }

    var c2=0;
    for(var i=12;i<22;i++){
        if(c2==90||c2==270){
            c2=c2+30;
            i--;
            continue;
        }
        S2[i].style.WebkitTransform='rotateY(30deg)'+
            ' rotateX('+c2+'deg)'+
            ' translateZ('+size+')';
        c2=c2+30;
    }
    var c3=0;
    for(var i=22;i<32;i++){
        if(c3==90||c3==270){
            c3=c3+30;
            i--;
            continue;
        }
        S2[i].style.WebkitTransform='rotateY(60deg)'+
            ' rotateX('+c3+'deg)'+
            ' translateZ('+size+')';
        count=c3+30;
    }

    var c4=0;
    for(var i=32;i<42;i++){
        if(c4==90||c4==270){
            c4=c4+30;
            i--;
            continue;
        }
        S2[i].style.WebkitTransform='rotateY(120deg)'+
            ' rotateX('+c4+'deg)'+
            ' translateZ('+size+')';
        c4=c4+30;
    }

    var c5=0;
    for(var i=42;i<52;i++){
        if(c5==90||c5==270){
            c5=c5+30;
            i--;
            continue;
        }
        S2[i].style.WebkitTransform='rotateY(150deg)'+
            ' rotateX('+c5+'deg)'+
            ' translateZ('+size+')';
        c5=c5+30;
    }
    var c6=0;
    for(var i=52;i<62;i++){
        if(c6==90||c6==270){
            c6=c6+30;
            i--;
            continue;
        }
        S2[i].style.WebkitTransform='rotateY(90deg)'+
            ' rotateX('+c6+'deg)'+
            ' translateZ('+size+')';
        c6=c6+30;
    }
}

window.onload=function(){
    var imags=7;//图片数量
    //球体1
    for(var i=0;i<62;i++){
        var str="<img class='q1' src="+(i%imags+1)+".jpg>";
        $("#box").append(str);
    }

    //球体2
    for(var i=0;i<62;i++){
        var str="<img class='q2' src="+(i%imags+1)+".jpg>";
        $("#box").append(str);
    }

    //球体3
    for(var i=0;i<62;i++){
        var str="<img class='q3' src="+(i%imags+1)+".jpg>";
        $("#box").append(str);
    }

    //球体4
    for(var i=0;i<62;i++){
        var str="<img class='q4' src="+(i%imags+1)+".jpg>";
        $("#box").append(str);
    }

    //球体5
    for(var i=0;i<62;i++){
        var str="<img class='q5' src="+(i%imags+1)+".jpg>";
        $("#box").append(str);
    }

    var S2=document.getElementsByClassName("q2");
    fill(S2,'100px');

    var SS=document.getElementsByClassName("q1");
    fill(SS,'20px');

    var S3=document.getElementsByClassName("q3");
    fill(S3,'200px');
    var S4=document.getElementsByClassName("q4");
    fill(S4,'250px');

    var S5=document.getElementsByClassName("q5");
    fill(S5,'150px');

}

$(document).ready(function(){
    $("#box img").mouseover(function(){
        $("#show").show();
        var s=$(this).attr('src');
        var str="<img src="+s+">s2</img>"
        $("#show").html(str);

    });
    $("#box img").mouseout(function(){
        $("#show").hide();
    });
});



