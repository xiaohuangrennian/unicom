<%--
  Created by IntelliJ IDEA.
  User: XiaoQ
  Date: 2022/8/17
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>主页面</title>
    <!--引入jquery代码-->
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>

    <script>
      function network() {
        document.getElementById("mainPage").src="/network/selectAll";
      }
      function residence() {
        document.getElementById("mainPage").src="/residence/selectAll";
      }
      function reset() {
        document.getElementById("mainPage").src="/main/mainPage";
      }
    </script>
    <script>
      function search() {
        var id = document.getElementById("id").value;
        console.log(id);
        document.getElementById("mainPage").src="/network/selectById?id=${id}";
      }
    </script>
  </head>
  <body>

  <div style="width: 100%;height: 100%;background-color: #FFA500;border: 3px">
    <div style="background-color: antiquewhite;height: 10%;width: 100%;">

            <span style="width: 80%;float:left;"><h1 style="display: inline">联通网点查询系统</h1></span>
            <span style="width: 10%;"><h5 style="display: inline"><a href="#" style="">注册</a>|
            <a href="#" style="">登录</a> </h5></span>


    </div>

    <div style="background-color: yellowgreen;width: 10%;height: 90%;float: left;">
      <h3>菜单栏</h3>
      <h5><button onclick="network()" id="networkBtn">查询所有网点</button></h5>
      <h5><button onclick="residence()" id="residenceBtn">查询所有小区</button></h5>
<%--      <h5><a id="anetwork" onclick="network()">查询所有网点</a></h5>--%>
      <h5><button><a href="/network/showGraph" >打开地图</a></button></h5>
      <h5><button onclick="reset()" id="resetBtn">重置</button></h5>

    </div>

    <div style="background-color: lightgoldenrodyellow;width: 90%;height: 90%;float: right;">
      <div style="height: 10%;text-align: right;float:right;">
          <input type="text" name="id" placeholder="通过网点编号查询" id="id">
          <button id="searchBtn" value="查询" onclick="search()" >查询</button>
        </form>
      </div>
      
      <div style="height: 90%;">
        <iframe src="/main/mainPage" style="width: 100%;height: 100%;" id="mainPage"></iframe>
      </div>
    </div>
    
  </div>
  </body>
</html>
