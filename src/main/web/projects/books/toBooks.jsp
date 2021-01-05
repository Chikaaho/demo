<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>登录验证中...</title>
    <link rel="stylesheet" href="../../statics/css/books/sakura.css">
    <link href="../../statics/ico/Chika.ico" rel="icon">
    <script src="../../statics/js/sakura-jquery.js"></script>
    <script src="../../statics/js/books/sakura.js"></script>
</head>
<body>
<div id="jsi-cherry-container" class="container"></div>
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
        jump(5);
    });
</script>
</body>
</html>