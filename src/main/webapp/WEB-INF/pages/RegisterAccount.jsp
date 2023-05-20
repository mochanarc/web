<%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2023/4/21
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册账号</title>
</head>
<body>
    欢迎注册！
    <form action="${pageContext.request.contextPath}/Register"
          method="post">

        请&nbsp;输&nbsp;入&nbsp;E-mail：<input type="text" name="email"/><br/>
        请&nbsp;输&nbsp;入&nbsp;密&nbsp;&nbsp;&nbsp;码：<input type="text" name="password"/><br/>
        <input type="submit" value="注册"/>
    </form>
</body>
</html>
