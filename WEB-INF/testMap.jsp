<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testMap.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <img  src="./images/banner.gif" usemap="#map1">
    <map name="map1">
    	<area shape = "rect" coords = "196,40,275,60" alt="首页" href = "##">
    	<area shape = "rect" coords = "195,65,273,83" alt="公寓信息" href = "##">
    	<area shape = "rect" coords = "288,41,358,53" alt="招聘信息" href = "##">
    	<area shape = "rect" coords = "289,66,360,83" alt="求职信息" href = "##">
    	<area shape = "rect" coords = "382,42,455,53" alt="培训信息" href = "##">
    	<area shape = "rect" coords = "371,65,447,80" alt="家教信息" href = "##">
    	<area shape = "rect" coords = "471,37,546,52" alt="房屋信息" href = "##">
    	<area shape = "rect" coords = "468,62,548,83" alt="车辆信息" href = "##">
    	<area shape = "rect" coords = "564,37,651,54" alt="求购信息" href = "##">
    	<area shape = "rect" coords = "562,67,653,82" alt="出售信息" href = "##">
    	<area shape = "rect" coords = "667,36,742,57" alt="招商信息" href = "##">
    	<area shape = "rect" coords = "677,66,766,83" alt="寻人/物信息" href = "##">
    	<area shape = "rect" coords = "345,7,432,26" alt="我要发布" href = "##">
    	<area shape = "rect" coords = "437,7,525,26" alt="管理员登录" href = "##">
    	<area shape = "rect" coords = "530,7,600,26" alt="加入收藏" href = "##">
    	<area shape = "rect" coords = "605,7,678,26" alt="设为首页" href = "##">
    	<area shape = "rect" coords = "680,7,744,26" alt="联系我们" href = "##">
    </map>
  </body>
</html>
