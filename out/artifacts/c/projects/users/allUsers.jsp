<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户管理</title>
    <link rel="stylesheet" href="../../statics/css/usersStyle.css">
    <script type="text/javascript" src="../../statics/js/jquery-3.5.1.js"></script>
    <link href="../../statics/ico/Chika.ico" rel="icon">
</head>
<body>
<div class="container" style="text-align: center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>用户列表</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户名称</th>
                    <th>用户密码</th>
                    <th>用户性别</th>
                    <th>管理级别</th>
                    <th>操作</th>
                </tr>
                </thead>
                <!--从list中遍历数据-->
                <c:forEach var="users" items="${userList}">
                    <tbody>
                    <tr>
                        <td>${users.user_name}</td>
                        <td>${users.user_pwd}</td>
                        <td>${users.user_sex}</td>
                        <td>${users.admins}</td>
                        <td>
                            <a class="btn btn-info btn-sm"
                               href="/users/updatePage/?id=${users.user_id}">修改</a>
                            &nbsp; || &nbsp;
                            <a class="btn btn-danger btn-sm"
                               href="/users/deleteUser/${users.user_id}">删除</a>
                        </td>
                    </tr>
                    </tbody>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>

</html>
