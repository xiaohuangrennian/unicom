<%--
  Created by IntelliJ IDEA.
  User: XiaoQ
  Date: 2022/8/18
  Time: 15:14
  To change this template use File | Settings | File Templates.
  判断某点是否在一个多边形之内
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>点是否在多边形内</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" type="text/css">
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=2.0&key=您申请的key值"></script>
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
    <style>
        html,body,#container{
            height: 100%
        }
    </style>
</head>
<body>
<div id="container"></div>
<div class='info'>拖动Marker可调整位置</div>
<script type="text/javascript">
    //初始化地图对象，加载地图
    var map = new AMap.Map("container", {
        resizeEnable: true,
        zoom: 13
    });

    // 创建多边形
    var path = [
        [116.169465,39.932670],
        [116.160260,39.924492],
        [116.186138,39.879817],
        [116.150625,39.710019],
        [116.183198,39.709920],
        [116.226950,39.777616],
        [116.421078,39.810771],
        [116.442621,39.799892],
        [116.463478,39.790066],
        [116.588276,39.809551],
        [116.536091,39.808859],
        [116.573856,39.839643],
        [116.706380,39.916740],
        [116.657285,39.934545],
        [116.600293,39.937770],
        [116.540039,39.937968],
        [116.514805,39.982375],
        [116.499935,40.013710],
        [116.546520,40.030443],
        [116.687668,40.129961],
        [116.539697,40.080659],
        [116.503390,40.058474],
        [116.468800,40.052578]
    ];
    var polygon = new AMap.Polygon({
        map: map,
        fillOpacity:0.4,
        path: path
    });

    // 创建点
    var marker = new AMap.Marker({
        map: map,
        draggable:true,
        position: [116.566298, 40.014179]
    });

    function compute(){
        var point = marker.getPosition();
        var isPointInRing = AMap.GeometryUtil.isPointInRing(point,path);
        marker.setLabel({
            content:isPointInRing?'内部':'外部',
            offset:new AMap.Pixel(20,0)
        });
    }

    compute();
    // 为marker绑定拖拽事件
    marker.on('dragging',compute)
    map.setFitView();

</script>
</body>
</html>
