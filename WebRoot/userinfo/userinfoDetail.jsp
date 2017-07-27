<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userinfoDetail.jsp' starting page</title>
    
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
    <table align="center" border="1">
        <tr>
            <td>用户名</td>
            <td>${userinfo.uame }</td>
        </tr>
        <tr>
            <td>密码</td>
            <td>${userinfo.upsw }</td>
        </tr> 
        <tr>
            <td>编号</td>
            <td>${userinfo.userid }</td>
        </tr>
        <tr>
            <td>姓名</td>
            <td>${userinfo.urealname }</td>
        </tr>
        <tr>
            <td>错题数量</td>
            <td><s:property value="allErrorsubject.size()"/></td>
        </tr>
    </table>
  </body>
</html>
