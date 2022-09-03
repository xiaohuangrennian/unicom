<%--
  Created by IntelliJ IDEA.
  User: XiaoQ
  Date: 2022/8/18
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <title>地图显示</title>
    <style>
        html,
        body,
        #container {
            width: 100%;
            height: 100%;
        }
    </style>

    <script type="text/javascript" src="https://a.amap.com/jsapi_demos/static/demo-center/js/jquery-1.11.1.min.js" ></script>
    <script type="text/javascript" src="https://a.amap.com/jsapi_demos/static/demo-center/js/underscore-min.js" ></script>
    <script type="text/javascript" src="https://a.amap.com/jsapi_demos/static/demo-center/js/backbone-min.js" ></script>
    <script type="text/javascript" src='https://a.amap.com/jsapi_demos/static/demo-center/js/prety-json.js'></script>
</head>
<body>

<div id="cont" style="width:100%;height: 100%">

    <div id="header" style="background-color:#FFA500;">
        <h1 style="margin-bottom:0;">地图展示</h1></div>

    <div id="menu" style="background-color:#EEEEEE;height:700px;width:200px;float:left;">
        <b><h1>菜单</h1></b><br>
        <h3><a href="/network/firstpage">首页</a></h3><br>
        <h3><a href="/network/getNetwork">选择网点</a></h3><br>
        <h3><a href="/residence/addResidence">选择小区</a></h3></div>

    <div id="content" style="background-color:#EEEEEE;height:700px;width:1300px;float:right;">
        <div id="container"></div>
        <!-- 加载地图JSAPI脚本 -->
        <script src="https://webapi.amap.com/maps?v=2.0&key=152277437a0a6b141d22c7e891fcbd44"></script>
        <script>
            var map = new AMap.Map('container', {
                viewMode: '2D', // 默认使用 2D 模式，如果希望使用带有俯仰角的 3D 模式，请设置 viewMode: '3D',
                zoom:11, //初始化地图层级
                center: [108.893739,34.232082] //初始化地图中心点，北京
            });

            //获取并展示当前城市信息
            function logMapinfo(){
                map.getCity( function(info){
                    var node = new PrettyJSON.view.Node({
                        el: document.querySelector("#map-city"),
                        data: info
                    });
                });
            }

            logMapinfo();

            //绑定地图移动事件
            map.on('moveend', logMapinfo);
        </script>
    </div>

    <div id="footer" style="background-color:#FFA500;clear:both;text-align:center;">
        版权 © 黄仁念</div>

</div>

</body>
</html>