<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
</head>
<style>
    input[type=text], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    div {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
        width: 40%;
        margin: 50px auto;
    }
    #info{
        color: red;
        margin: 0px auto;
    }
    body{
        background-image: url("back2.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<body>
<div>
    <form>
        <label for="username">姓名：</label>
        <input type="text" id="username" name="username" placeholder="Your name..">
        <label for="password">密码：</label>
        <input type="text" id="password" name="password" placeholder="Your password..">
        <input formaction="camara" type="submit" name="sign_up" value="提交">
        <input formaction="sign" type="submit" name="sign_in" value="注册">
    </form>
    <script src="jquery-3.1.1.min.js"></script>
    <script src="index.js"></script>
</div>
<div id="info">${info}</div>
</body>
</html>