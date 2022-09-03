<%--
  Created by IntelliJ IDEA.
  User: XiaoQ
  Date: 2022/8/18
  Time: 15:00
  To change this template use File | Settings | File Templates.
  计算两点之间的距离，可用于判断某小区周围Nkm之内的有多少点
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>两点间距离</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <style>
        html,body,#container{
            height:100%;
        }
    </style>
</head>
<body>
<div id="container"></div>
<div class='info' style='min-width:15rem;'>可拖动Marker调整位置</div>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=2.0&key=您申请的key值"></script>
<script type="text/javascript">
    //初始化地图对象，加载地图
    var map = new AMap.Map("container", {
        resizeEnable: true,
        zoom: 13
    });
    var m1 = new AMap.Marker({
        map: map,
        draggable:true,
        position: new AMap.LngLat(116.368904, 39.923423)
    });
    var m2 = new AMap.Marker({
        map: map,
        draggable:true,
        position:new AMap.LngLat(116.387271, 39.922501)
    });
    map.setFitView();

    var line = new AMap.Polyline({
        strokeColor:'#80d8ff',
        isOutline:true,
        outlineColor:'white'
    });
    line.setMap(map);
    var text = new AMap.Text({
        text:'',
        style:{'background-color':'#29b6f6',
            'border-color':'#e1f5fe',
            'font-size':'12px'}
    });
    text.setMap(map)
    function computeDis(){
        var p1 = m1.getPosition();
        var p2 = m2.getPosition();
        var textPos = p1.divideBy(2).add(p2.divideBy(2));
        var distance = Math.round(p1.distance(p2));
        var path = [p1,p2];
        line.setPath(path);
        text.setText('两点相距'+distance+'米')
        text.setPosition(textPos)
    }
    computeDis();
    m1.on('dragging', computeDis)
    m2.on('dragging', computeDis)
</script>
</body>
</html>