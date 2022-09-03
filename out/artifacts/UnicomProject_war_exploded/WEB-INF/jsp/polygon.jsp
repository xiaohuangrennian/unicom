<%--
  Created by IntelliJ IDEA.
  User: XiaoQ
  Date: 2022/8/18
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>清除所有覆盖物</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css"/>
    <style>
        html,body,#container{
            height:100%;
            width:100%;
        }
    </style>
</head>
<body>
<div id="container"></div>
<div class="input-card">
    <h4>清除所有覆盖物</h4>
    <input id="removeAllOverlay" type="button" class="btn" value="清除所有覆盖物" />
</div>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=2.0&key=152277437a0a6b141d22c7e891fcbd44"></script>
<script type="text/javascript">
    // 创建地图实例
    var map = new AMap.Map("container", {
        zoom: 13,
        center: [116.43, 39.92],
        resizeEnable: true
    });

    // 创建点、线、面覆盖物实例
    var marker = new AMap.Marker({
        position: new AMap.LngLat(116.39, 39.92),
    });

    var polylinePath = [
        new AMap.LngLat(116.41, 39.93),
        new AMap.LngLat(116.43, 39.91)
    ];

    var polyline = new AMap.Polyline({
        path: polylinePath
    });

    var polygonPath = [
        new AMap.LngLat(116.46, 39.93),
        new AMap.LngLat(116.44, 39.91),
        new AMap.LngLat(116.49, 39.91)
    ];

    var polygon = new AMap.Polygon({
        path: polygonPath
    });

    // 将点，线，面添加到地图
    map.add([marker, polyline, polygon]);

    function removeAllOverlay(){

        // 清除地图上所有添加的覆盖物
        map.clearMap();
    }

    // 绑定移除事件
    document.getElementById("removeAllOverlay").onclick = removeAllOverlay;
</script>
</body>
</html>