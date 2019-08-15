$(document).ready(function(){
    $("#info").text("");
})

$("#username").focus(function () {
    if($("#username").val()!=''){
        $("#info").text("");
    }
})
$("#username").blur(function () {
    if($("#username").val()!=''){
        $.ajax({
            url:'findName',
            method:'POST',
            data:{username:$("#username").val()},
            dataType:'json',
            success:function (data) {
                if(data!=''){
                    if(data.result=='success'){
                      $("#info").text("用户名存在,可以登录");
                    }else{
                        $("#info").text("用户名不存在,请注册");
                    }
                }else {
                    alert("服务器错误，请稍后再试");
                }


            }
        })
    }
})