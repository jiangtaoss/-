<%@ page language="java" import="java.util.*,com.jiangtao.domain.*,com.jiangtao.service.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/comm.css" type="text/css" rel="stylesheet">
	<link href="css/index.css" type="text/css" rel="stylesheet">

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
    	<!-- 中左部分 -->
    <div class="left">
    	<div class="ad_info_top">
    		<span>
   				 <img src="./images/landian.gif">
      			    <font class="font-style1">推荐企业广告信息</font> 
   			 </span>
   		 </div>
    	<!-- 广告信息 -->
   		 <div class="ad_info_list">
   		
    		<ul>
    		<% //获取广告信息
    			ArrayList adList = (ArrayList)request.getAttribute("adList");
    			for(int i=0; i<adList.size(); i++) {
    					Advertisement ad = (Advertisement)adList.get(i);
	    		 %>
	   			 	<li><a href="<%=ad.getUrl() %>">- <%=ad.getTitle() %></a></li>
	  			 <%
	  			 }
	  			  %>
    		</ul>
    
   	 	</div>
   	 	<!-- 信息检索头 -->
   	 	<div class="ad_info_search_title">
    		<span>
   				 <img src="./images/landian.gif">
      			    <font class="font-style1">信息快速检索</font> 
   			 </span>
   		 </div>
   		 
   		 <div class="info_search">
   		 <form action="/taotao/GoUserIndexServlet" method="post">
   		 <table cellpadding="2px">
   		 		<tr><td><font class="font-style2">关键字：</font></td><td><input type="text" name="keyword"/></td></tr>
   		 		<tr><td><font class="font-style2">条    件：</font></td>
   		 <!-- 接收infoTypeList -->
   		
   		 		<td>
   					 <select name="info" >
   					  <%
			   		 	ArrayList alInfoTypeList = (ArrayList)request.getAttribute("alInfoTypeList");
			   		 	for(int i=0; i<alInfoTypeList.size(); i++) {
			   		 		InfoType infoType =(InfoType)alInfoTypeList.get(i);
			   		  %>
   						 <option value="<%=infoType.getInfoName() %>"><%=infoType.getInfoName() %></option>
   					  <% 
   					 }
   					 %>
   					 </select>
   				 </td>
   		 		</tr>
   		 		<tr><td></td><td><input type="image" src="./images/btn1.gif" /></td></tr>
   		
   		 </table>
   		</form>
   		 </div>
   		 <div class="lianxi">
    		<span class="font-style1">
   				 <img src="./images/landian.gif">
      			   联系我们 
   			 </span>
   		 </div>
   		 <div class="lianxiUS">
   		 	<span class="font-style3"><u>涛涛供求信息网</u></span><br/>
   		 	联系地址：大连开发区小孤山东里31#6-201<br/>
   		 	联系电话：13546326646<br/>
   		 	邮政编码：116600
   		 </div>
    </div>
    <!-- 中右部分 -->
    <div class="right">
    	<!-- 右上小 -->
    	<div class="fufei">
    		<img src="./images/fufei.gif" />
    	</div>
    	<!-- 付费信息资源 -->
    	<!-- 分页技术 -->
    		<%
	    		ArrayList alPay = (ArrayList)request.getAttribute("alPay");
	    		String S_payPageNow = (String)request.getAttribute("payPageNow");
	    		String S_payPageCount = (String)request.getAttribute("payPageCount");
    			int payPageNow = Integer.parseInt(S_payPageNow);
   				int payPageCount = Integer.parseInt(S_payPageCount);
   				%>
   				<div class="fufei_info">
   				<% 
   				for(int i=0; i<alPay.size(); i++) {
   					PayInfo payInfo = (PayInfo)alPay.get(i);
   					InfoTypeService infoTypeService = new InfoTypeService();
   					int typeId = payInfo.getTypeId();
    		 %>
			    		
			    	<table>
			    	<tr><td><font class="font-style3">[<%=infoTypeService.getInfoTypeById(typeId+"").getInfoName() %>] </font><font class="font-style4"> <%=payInfo.getTilte() %></font><font class="font-style5"> <%=payInfo.getPublishDate() %></font></td></tr>
			    	<tr><td style="text-indent: 2em;"><span class="font-style6"><%=payInfo.getContent() %></span></td></tr>
			    	<tr><td><font class="font-style4">联系人：<%=payInfo.getLinkMan()%>   联系电话：<%=payInfo.getTel() %></font></td></tr>
			    	<tr><td><hr/></td></tr>
			    	</table>
		    <% 	
		    	}
		    %>
		    <!-- 分页下标的实现 -->
		     <span class="fenye">
		    <%
		    if(payPageNow-1==0) {
		    %>
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?payPageNow=1"><上一页></a></font>
		    <% 
		    } else {
		    %>
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?payPageNow=<%=payPageNow-1 %>"><上一页></a></font>
		    <% 
		    }
		    
		    for(int j=1; j<=payPageCount; j++) {
		    %>  
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?payPageNow=<%=j %>"><<%=j %>></a></font> 	
    		<%
    		}
    	 	%>
    	 	 <%
		    if(payPageNow==payPageCount) {
		    %>
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?payPageNow=<%=payPageCount %>"><下一页></a></font>
		    <% 
		    } else {
		    %>
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?payPageNow=<%=payPageNow+1 %>"><下一页></a></font>
		    <% 
		    }
		    %>
    		 </span>
    	 	</div>
    	<!-- 广告信息 -->
    	<div class="guanggao">
    		<img src="./images/guanggao.gif"/>
    	</div>
    	<!-- 免费专区 -->
    	<div class="free_title">
    		<img src="./images/mian.gif"/>
    	</div>
    	<!-- 免费专区信息 -->
    	<div class="freeinfo">
    		<!-- 分页技术 -->
    		<%
	    		ArrayList alFree = (ArrayList)request.getAttribute("alFree");
	    		String S_freePageNow = (String)request.getAttribute("freePageNow");
	    		String S_freePageCount = (String)request.getAttribute("freePageCount");
    			int freePageNow = Integer.parseInt(S_freePageNow);
   				int freePageCount = Integer.parseInt(S_freePageCount);
   				%>
   				<div class="freeinfo">
   				<% 
   				for(int i=0; i<alFree.size(); i++) {
   					FreeInfo freeInfo = (FreeInfo)alFree.get(i);
   					InfoTypeService infoTypeService = new InfoTypeService();
   					int typeId = freeInfo.getTypeId();
    		 %>
			    		
			    	<table>
			    	<tr><td><font class="font-style3">[<%=infoTypeService.getInfoTypeById(typeId+"").getInfoName() %>] </font><font class="font-style4"> <%=freeInfo.getTilte() %></font><font class="font-style5"> <%=freeInfo.getPublishDate() %></font></td></tr>
			    	<tr><td style="text-indent: 2em;"><span class="font-style6"><%=freeInfo.getContent() %></span></td></tr>
			    	<tr><td><font class="font-style4">联系人：<%=freeInfo.getLinkMan()%>   联系电话：<%=freeInfo.getTel() %></font></td></tr>
			    	<tr><td><hr/></td></tr>
			    	</table>
		    <% 	
		    	}
		    %>
		    <!-- 分页下标的实现 -->
		     <span class="fenye">
		    <%
		    if(freePageNow-1==0) {
		    %>
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?freePageNow=1"><上一页></a></font>
		    <% 
		    } else {
		    %>
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?freePageNow=<%=freePageNow-1 %>"><上一页></a></font>
		    <% 
		    }
		    
		    for(int j=1; j<=freePageCount; j++) {
		    %>  
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?freePageNow=<%=j %>"><<%=j %>></a></font> 	
    		<%
    		}
    	 	%>
    	 	 <%
		    if(freePageNow==freePageCount) {
		    %>
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?freePageNow=<%=freePageCount %>"><下一页></a></font>
		    <% 
		    } else {
		    %>
		    	<font class="font-style7"><a href="/taotao/GoUserIndexServlet?freePageNow=<%=freePageNow+1 %>"><下一页></a></font>
		    <% 
		    }
		    %>
    		 </span>
    	 	</div>
    	</div>
    </div>
    <!-- 底部 -->
   	<div class="bottom">
   	<span>
   	<font class="font-style4">NUC 姜涛</font>
   	</span>
   	</div>
  </body>
</html>
