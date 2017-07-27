<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	<style type="text/css">
#login {
	width: 400px;
	height: 250px;
	background-color: #f2f2f2;
	border:1px solid #DDDDDD;
	padding: 5px;
}
#login fieldset {
	border: none;
	margin-top: 10px;
}
#login fieldset legend {
	font-weight: bold;
}
#login fieldset p {
	display: block;
	height: 30px;
}
#login fieldset p label {
	display: block;
	float:left;
	text-align: right;
	font-size: 12px;
	width: 90px;
	height: 30px;
	line-height: 30px;
}
#login fieldset p input {
	display: block;
	float:left;
	border: 1px solid #999;
	width: 250px;
	height: 30px;
	line-height: 30px;
}
#login fieldset p input.code {
	width: 60px;
}
#login fieldset p img {
	margin-left: 10px;
}
#login fieldset p a {
	color: #057BD2;
	font-size: 12px;
	text-decoration: none;
	margin: 10px;
}
#login fieldset p input.btn {
	background: url("css/images/login.gif") no-repeat;
	width: 98px;
	height: 32px;
	margin-left: 60px;
	color: #ffffff;
}
#login fieldset p input.input_focus {
	background-color: #BEE7FC;
}
</style>
  </head>
  
  <body>
    <form action="answer/login.action">
	<div align="center">	
		<div id="login" >
		  <fieldset>
		    <legend>用户登录</legend>
		    <p>
		      <label>用户名：</label>
		      <input name="userinfo.uame"  type="text" value="zsf"/>
		    </p>
		    <p>
		      <label>密码：</label>
		      <input name="userinfo.upsw" type="password" value="zsf"/>
		    </p>
		    <p>
		      <label>验证码：</label>
		      <input name="code" type="text" class="code" />
		      <img src="css/images/code.gif" width="80" height="30" /><a href="#">换一张</a> </p>
		    <p>
		      <input name="" type="submit" class="btn"  value="登录" />
		      <a href="answer/preRegister.action">注册</a><span>|</span><a href="#">忘记密码？</a> 
		    </p>
		  </fieldset>
		</div>
	</div>
	</form>
  </body>
</html>
