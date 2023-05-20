<%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2023/4/2
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>添加新课程</title>
</head>
<body>
    请填写要添加的课程。<br>
<form action="${pageContext.request.contextPath}/setNewCourse"
      method="post" enctype="multipart/form-data">

    课程名称：<input type="text" name="name"/><br/>
    课程学时：<input type="text" name="hours"/><br/>

    开课学院：
    <select id="sidList" name="sid" >
        <option value="NONE">--- 请选择 ---</option>

        <c:forEach items="${schoolList}" var="school">
            <option value=${school.id}>${school.schoolname}</option>
        </c:forEach>

    </select><br/>
    <br/>
        请设置课程封面：<input type="file" name="imgFile" />
    <br/>
    <input type="submit" value="提交"/>
</form>
</body>
</html>
