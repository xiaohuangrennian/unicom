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
<%--<a href="/network/firstpage">返回首页</a>--%>
<table style="border: 10px;border-spacing: 1px;border-color: chartreuse">
    <thead>
    <tr style="text-align: center;border: 10px">

        <td>省份</td>
        <td>城市</td>
        <td>区县</td>
        <td>街道或村镇</td>
        <td>名字</td>
        <td>wkt</td>
        <td>年份</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="residence" items="${residences}">
        <tr>


            <td>${residence.province}</td>
            <td>${residence.city}</td>
            <td>${residence.region}</td>
            <td>${residence.street}</td>
            <td>${residence.name}</td>
            <td><p>${residence.wkt}</p></td>
            <td>${residence.year}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
