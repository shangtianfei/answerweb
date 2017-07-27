<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xxJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		 body, div, ul, li{margin:0; padding:0;font-style: normal;font:16px/22px "\5B8B\4F53",Arial, Helvetica, sans-serif;} 
		/* \5B8B\4F53 代表 宋体，更多中文字体转 Unicode http://www.divcss5.com/jiqiao/j325.shtml */ 
		 ul ,li{list-style:none} 
		 img {border: 0; vertical-align:middle} 
		 body{color:#000000;background:#FFF; text-align:center} 
		.clear{clear:both;height:1px;width:100%; overflow:hidden; margin-top:-1px} 
		 a{color:#000000;text-decoration:none;font-size: 16px}  
		 a:hover{color:#00FFFF} 
		 		 
		ul#navcss{ width:100%; height:100%; background:#00A2CA;margin:0 auto} 
		ul#navcss li{display:inline; height:100%;} 
		ul#navcss li a{display:inline-block; padding:0 20px; height:100%; line-height:40px; 
		color:#FFF; font-family:"\5FAE\8F6F\96C5\9ED1"; font-size:16px} 
		ul#navcss li a:hover{background:#0095BB} 
	</style>

  </head>
  
  <body>
   	    <div class="navall" data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">
	   	    <ul id="navcss"> 
	   	        <li><a href="#">登&ensp;&ensp;录</a></li>
				<li><a href="answer/errorList.action?userinfo.userid=${userinfo.userid}">消灭错题</a></li>
				<li><a href="answer/logout.action">注销登录</a></li>
				<li><a href="http://www.havelook.science">联系我们</a></li>				
				<li  style="float:right;"><a href="answer/userinfodatail.action">${userinfo.uame},欢迎</a></li>
			</ul> 
   	    </div>
  </body>
</html>
