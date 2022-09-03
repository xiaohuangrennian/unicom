<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: XiaoQ
  Date: 2022/8/18
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>覆盖物的添加与移除</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="https://webapi.amap.com/maps?v=2.0&key=152277437a0a6b141d22c7e891fcbd44"></script>
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
    <style>
        html,
        body,
        #container {
            width: 100%;
            height: 100%;
        }

        label {
            width: 55px;
            height: 26px;
            line-height: 26px;
            margin-bottom: 0;
        }
        button.btn {
            width: 80px;
        }
    </style>
</head>
<body>
<div id="container"></div>
<div class="input-card" style="width:24rem;">
    <h4>添加、删除覆盖物</h4>
    <div class="input-item">
        <label>Marker：</label>
        <button class="btn" id="add-marker" style="margin-right:1rem;">添加Marker</button>
        <button class="btn" id="remove-marker">删除Marker</button>
    </div>
    <div class="input-item">
        <label>Circle：</label>
        <button class="btn" id="add-circle" style="margin-right:1rem;">添加Circle</button>
        <button class="btn" id="remove-circle">删除Circle</button>
    </div>
</div>

<script>
    var map = new AMap.Map('container', {
        resizeEnable: true,
        zoom:11,
        center: [116.397428, 39.90923]
    });


    // 构造矢量圆形,我们应该可以构造多边形
    var circle = new AMap.Circle({
        center: new AMap.LngLat("116.403322", "39.920255"), // 圆心位置
        radius: 1000,  //半径
        strokeColor: "#F33",  //线颜色
        strokeOpacity: 1,  //线透明度
        strokeWeight: 3,  //线粗细度
        fillColor: "#ee2200",  //填充颜色
        fillOpacity: 0.35 //填充透明度
    });


    //构建一个多边形
    var polygonPath = [
        new AMap.LngLat(116.46, 39.93),
        new AMap.LngLat(116.44, 39.91),
        new AMap.LngLat(116.49, 39.91)
    ];
    var polygon = new AMap.Polygon({
        path: polygonPath
    });




    //事件绑定,可实现根据后台返回的点，形成多个maker
    document.querySelector("#add-marker").onclick = function() {
        <c:forEach var="point" items="${points}">
        // 构造点标记，这个可以通过设计position，从后端传过来的值
        var marker = new AMap.Marker({
            icon: "https://webapi.amap.com/theme/v1.3/markers/n/mark_b.png",
            position: [${point[0]}, ${point[1]}],
            anchor:'bottom-center'
        });
        map.add(marker);
        map.setFitView();
        </c:forEach>

    }
    document.querySelector("#remove-marker").onclick = function() {
        map.clearAll();
        map.setFitView();
    }
    document.querySelector("#add-circle").onclick = function() {
        map.add(polygon);
        map.setFitView();
    }
    document.querySelector("#remove-circle").onclick = function() {
        //map.remove(circle);
        //map.setFitView();
        map.clearMap();
    }

</script>
</body>
</html>
