<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhaoshang.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/comm.css" type="text/css" rel="stylesheet">
	<link href="css/zhaoshang.css" type="text/css" rel="stylesheet">
  </head>
  
  <body>
    <div class="top">
   	 	<!-- 头部 -->
    	<img src="./images/banner.gif" usemap="#map1"/>
    	<map name="map1">
	    	<area shape = "rect" coords = "196,40,275,60" alt="首页" href = "/taotao">
	    	<area shape = "rect" coords = "195,65,273,83" alt="公寓信息" href = "/taotao/ClickServlet?type=gongyu">
	    	<area shape = "rect" coords = "288,41,358,53" alt="招聘信息" href = "/taotao/ClickServlet?type=zhaopin">
	    	<area shape = "rect" coords = "289,66,360,83" alt="求职信息" href = "/taotao/ClickServlet?type=qiuzhi">
	    	<area shape = "rect" coords = "382,42,455,53" alt="培训信息" href = "/taotao/ClickServlet?type=peixun">
	    	<area shape = "rect" coords = "371,65,447,80" alt="家教信息" href = "/taotao/ClickServlet?type=jiajiao">
	    	<area shape = "rect" coords = "471,37,546,52" alt="房屋信息" href = "/taotao/ClickServlet?type=fangwu">
	    	<area shape = "rect" coords = "468,62,548,83" alt="车辆信息" href = "/taotao/ClickServlet?type=cheliang">
	    	<area shape = "rect" coords = "564,37,651,54" alt="求购信息" href = "/taotao/ClickServlet?type=qiugou">
	    	<area shape = "rect" coords = "562,67,653,82" alt="出售信息" href = "/taotao/ClickServlet?type=chushou">
	    	<area shape = "rect" coords = "667,36,742,57" alt="招商信息" href = "/taotao/ClickServlet?type=zhaoshang">
	    	<area shape = "rect" coords = "677,66,766,83" alt="寻人/物信息" href = "/taotao/ClickServlet?type=xunwu">
	    	<area shape = "rect" coords = "345,7,432,26" alt="我要发布" href = "/taotao/ClickServlet?type=fabu">
	    	<area shape = "rect" coords = "437,7,525,26" alt="管理员登录" href = "/taotao/ClickServlet?type=login">
	    	<area shape = "rect" coords = "530,7,600,26" alt="加入收藏" href = "##">
	    	<area shape = "rect" coords = "605,7,678,26" alt="设为首页" href = "##">
	    	<area shape = "rect" coords = "680,7,744,26" alt="联系我们" href = "/##">
    </map>
    </div>
    <div class="zhaoshang">
    <span style="text-indent: 2em;">
    	<font	class="font-style8">涛涛供求信息网，是一款致力于大众化供求信息及时发布平台，需要为您宣传的请联系法人代表<br/><font class="font-style9">&nbsp&nbsp&nbsp&nbsp姜涛先生</font></font>
    	<font class="font-style9">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp联系电话：13546326646</font>
    </span>
    </div>
  </body>
</html>
