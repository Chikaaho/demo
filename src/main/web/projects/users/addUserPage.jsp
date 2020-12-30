<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>注册新用户</title>
    <meta charset="UTF-8">
    <link href="../../statics/css/bootstrap/bootstrap.css" rel="stylesheet">
    <script src="../../statics/js/jquery-3.5.1.js"></script>
    <link href="../../statics/ico/Chika.ico" rel="icon">
</head>
<body>
<div class="container" style="text-align: center;">
    <form action="/users/addUser" method="">
        <div class="form-group">
            <label for="user_name">用户名称</label>
            <input type="text" name="user_name" class="form-control" id="user_name" required>
        </div>
        <div class="form-group">
            <label for="user_pwd">用户密码</label>
            <input type="text" name="user_pwd" class="form-control" id="user_pwd" required>
        </div>
        <div class="form-group">
            <label for="user_pwd_check">确认密码</label>
            <input type="text" name="user_pwd_check" class="form-control" id="user_pwd_check" required
                   onblur="pwd_check()">
        </div>
        <div class="custom-radio">
            <label>
                <input type="radio" name="user_sex" id="optionsRadios1" value="men">男
            </label>
            <label>
                <input type="radio" name="user_sex" id="optionsRadios2" value="female">女
            </label>
        </div>
        <button type="submit" class="btn btn-default">注册用户</button>
    </form>
</div>
</body>
<script>
    function pwd_check() {
        if (document.getElementById("user_pwd_check").value == "") {
            alert("请再次输入密码!")
            return;
        }
        let check = document.getElementById("user_pwd_check").value != document.getElementById("user_pwd").value;
        if (check) {
            console.log("两次输入密码不一致");
        } else {
            console.log("OK");
        }
    }

</script>
</html>