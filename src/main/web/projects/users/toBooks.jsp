<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../statics/ico/Chika.ico" rel="icon">
    <link href="../../statics/css/users/toBooks.css" rel="stylesheet">
    <script src="../../statics/js/jquery-3.5.1.js"></script>
</head>
<body>
<p class="text-center">登录成功,<span id="num">3</span>秒后将跳转</p>
<a href="/book/allBook" class="a_click">若未跳转成功,请点击此处手动进入</a>
</body>
<script>
    $(document).ready(function() {
        function jump(count) {
            window.setTimeout(function(){
                count--;
                if(count > 0) {
                    $('#num').attr('innerHTML', count);
                    jump(count);
                } else {
                    location.href="${pageContext.request.contextPath}/book/allBook";
                }
            }, 1000);
        }
        jump(3);
    });

</script>
</html>
