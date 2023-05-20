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
<html>
<head>
    <title>课程管理程序</title>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
</head>
<body>
    亲爱的用户${USER_SESSION.email}，欢迎你！<br>
    <a href = "${pageContext.request.contextPath}/logout">单击以登出</a><br>
    <br>
    <a href = "${pageContext.request.contextPath}/MainPage">单击以刷新列表</a>
    <table id = "courseList" border="1">
        <tr>
            <td>       </td>
            <td>课程名称</td>
            <td>学时</td>
            <td>授课学院名称</td>
            <td colspan = "2" align="center">操作</td>
        </tr>
        <c:forEach items="${courseList1}" var="course">

            <tr>
                <td><img src="showPic/${course.spic}" style="width:50px; height:50px;"/></td>
                <td>${course.name}</td>
                <td>${course.hours}</td>
                <td>${course.schoolName}</td>
                <td><a href = '${pageContext.request.contextPath}/getCourse?action=ModifyCourse&id=${course.id}'>编辑</a></td>
                <td><a href = '${pageContext.request.contextPath}/Delete?id=${course.id}'>删除</a></td>
            </tr>

        </c:forEach>

    </table>

    <a href = "${pageContext.request.contextPath}/Addcourse">添加新课程</a>

</body>
</html>
