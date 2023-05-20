<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>课程管理程序 登录页面</title>
</head>
<body>
欢迎来到课程管理系统！<br>
<form action="${pageContext.request.contextPath}/Login"
      method="post">

    E-mail：<input type="text" name="email"/><br/>
    密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"/><br/>
    <div>${msg}</div>
    <input type="submit" value="登陆"/>&nbsp;&nbsp;&nbsp;<a href = "${pageContext.request.contextPath}/toRegister">注册</a>
</form>
</body>
</html>