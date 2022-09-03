<%--
  Created by IntelliJ IDEA.
  User: XiaoQ
  Date: 2022/8/18
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>鼠标拾取地图坐标</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<style type="text/css">
    html,body{
        width: 100%;
        height: 100%;
        margin: 0px;
    }
    .map{
        height: 100%;
        width: 100%;
        float: left;
    }
</style>
<body>
<div id="container" class="map"></div>
<div class="input-card" style="height: 300px">
    <h4>左击获取经纬度：</h4>
    <div class="input-item">
        <form action="/network/toAdd">
        <input type="text" readonly="true" id="lnglat"  name="wkt"><br>
        网点编号：<input type="text" name="id"><br>
        建立年份：<input type="text" name="year"><br>
        <input type="submit" value="确认提交">
        </form>
        <button class="btn" onclick="" style="margin-bottom: 5px"><a href="/network/showGraph">返回</a></button>
    </div>
</div>

<script src="https://webapi.amap.com/maps?v=2.0&key=152277437a0a6b141d22c7e891fcbd44&plugin=AMap.Autocomplete"></script>
<script type="text/javascript">
    var map = new AMap.Map("container", {
        zoom: 11,
    });
    //为地图注册click事件获取鼠标点击出的经纬度坐标
    map.on('click', function(e) {
        document.getElementById("lnglat").value = e.lnglat.getLng() + ',' + e.lnglat.getLat()
    });
</script>
</body>
</html>