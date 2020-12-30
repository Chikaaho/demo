<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户管理</title>
    <link rel="stylesheet" href="../../statics/css/usersStyle.css">
    <script type="text/javascript" src="../../statics/js/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="../../statics/js/allUsers.js"></script>
    <link href="../../statics/ico/Chika.ico" rel="icon">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-lg-4 column text-center">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户名称</th>
                    <th>性别</th>
                    <th>用户类型</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${users.user_name}</td>
                    <td>${users.user_sex}</td>
                    <td>${users.admins}</td>
                    <td>
                        <a class="btn btn-info btn-sm"
                           href="/users/updateUser?id=${users.user_id}">修改</a>
                        &nbsp; || &nbsp;
                        <a class="btn btn-danger btn-sm"
                           href="/users/addUser">注册</a>
                    </td>
                </tr>
                </tbody>
            </table>
            </div>
    </div>
</div>
</body>
<script type="text/javascript">

</script>
</html>
