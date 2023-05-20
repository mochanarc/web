<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>修改课程</title>
    </head>
    <body>
        请修改课程数据。<br>
        <form action="${pageContext.request.contextPath}/modifyCourse"
              method="post" enctype="multipart/form-data">
            课程封面：<img src="showPic/${course.spic}" style="width:100px; height: 100px;"/><br/>
            课程名称：<input type="text" name="name" value="${course.name}"/><br/>
            <input type="hidden" name="id" value="${course.id}" />
            课程学时：<input type="text" name="hours" value="${course.hours}"/><br/>
            开课学院：
            <select id="sidList" name="sid" >
                <option value="NONE">--- 请选择 ---</option>
                <c:forEach items="${schoolList}" var="school">
                    <option value=${school.id}<c:if test="${1==course.sid}"> selected="selected"</c:if>>${school.schoolname}</option>
                </c:forEach>
            </select><br/>
            请设置课程封面：<input type="file" name="imgFile" value = "${course.spic}" />

            <br/>

            <input type="submit" value="提交"/>
        </form>
    </body>
</html>