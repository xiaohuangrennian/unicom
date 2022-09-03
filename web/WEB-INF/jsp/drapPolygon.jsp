<%--
  Created by IntelliJ IDEA.
  User: XiaoQ
  Date: 2022/8/18
  Time: 14:34
  To change this template use File | Settings | File Templates.
  这才是好用的区域编辑器
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <style>
        html,
        body,
        #container {
            width: 100%;
            height: 100%;
        }
    </style>
    <title>多边形编辑器吸附功能</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <script src="https://webapi.amap.com/maps?v=2.0&key=152277437a0a6b141d22c7e891fcbd44&plugin=AMap.PolygonEditor"></script>
    <script src="https://a.amap.com/jsapi_demos/static/demo-center/js/demoutils.js"></script>
</head>
<body>
<div id="container"></div>
<div class="input-card" style="width: 120px">
    <button class="btn" onclick="createPolygon()" style="margin-bottom: 5px">新建</button>
    <button class="btn" onclick="polyEditor.open()" style="margin-bottom: 5px">开始编辑</button>
    <button class="btn" onclick="polyEditor.close()">结束编辑</button>
    <button class="btn" onclick="" style="margin-bottom: 5px"><a href="/network/showGraph">返回</a></button>
</div>
<script type="text/javascript">
    var map = new AMap.Map("container", {
        center: [108.893739,34.232082],
        zoom: 16.8
    });

    // var path1 = [[116.475334, 39.997534], [116.476627, 39.998315], [116.478603, 39.99879], [116.478529, 40.000296], [116.475082, 40.000151], [116.473421, 39.998717]]
    // var path2 = [[116.474595, 40.001321], [116.473526, 39.999865], [116.476284, 40.000917]]
    // var polygon1 = new AMap.Polygon({
    //     path: path1
    // })
    // var polygon2 = new AMap.Polygon({
    //     path: path2
    // })
    //
    // map.add([polygon1, polygon2]);
    // map.setFitView();
    var polyEditor = new AMap.PolygonEditor(map);
    //polyEditor.addAdsorbPolygons([polygon1, polygon2]);
    polyEditor.on('add', function (data) {
        console.log(data);
        var polygon = data.target;
        polyEditor.addAdsorbPolygons(polygon);
        polygon.on('dblclick', () => {
            polyEditor.setTarget(polygon);
            polyEditor.open();
        })
    })
    polygon1.on('dblclick', () => {
        polyEditor.setTarget(polygon1);
        polyEditor.open();
    })
    polygon2.on('dblclick', () => {
        polyEditor.setTarget(polygon2);
        polyEditor.open();
    })
    function createPolygon() {
        polyEditor.close();
        polyEditor.setTarget();
        polyEditor.open();

    }
    polyEditor.setTarget(polygon2);
    polyEditor.open();
</script>
</body>
</html>