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
    <table style="border-spacing: 10px">
        <thead>
            <tr style="text-align: center;border-spacing: 3px">
                <td>id</td>
                <td>省份</td>
                <td>城市</td>
                <td>区县</td>
                <td>街道或村镇</td>
                <td>wkt</td>
                <td>年份</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <c:forEach var="network" items="${networks}">
                    <td>${network.id}</td>
                    <td>${network.province}</td>
                    <td>${network.city}</td>
                    <td>${network.region}</td>
                    <td>${network.street}</td>
                    <td>${network.wkt}</td>
                    <td>${network.year}</td>
                </c:forEach>
            </tr>
        </tbody>
    </table>

</body>
</html>
