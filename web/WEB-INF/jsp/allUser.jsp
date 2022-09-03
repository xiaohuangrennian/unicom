<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: XiaoQ
  Date: 2022/8/17
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>网点信息</title>
</head>
<body>
<a href="/network/firstpage">返回首页</a>
<table>
    <thead>
    <tr>

        <td>id</td>
        <td>用户名</td>
        <td>密码</td>
        <td>权限等级</td>

    </tr>
    </thead>
    <tbody>

        <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.psd}</td>
            <td>${user.authority}</td>

        </tr>
        </c:forEach>

    </tbody>
</table>

</body>
</html>
