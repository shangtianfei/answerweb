<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'subjectList.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
		.cssraindemo ul {
			font:normal 18px/22px Arial;
			padding:2px;
			width:500px;
		}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function checkResult(sid){
		var choiceval = "";
		var checkid = 1;//检测是否为错题修改页
		$("input[name='"+sid+"']").each(function() { 
			if($(this).attr("checked"))
			{
				choiceval=choiceval+$(this).val();
			}
		});
		$.ajax({
			type:"post",//请求方式
			url:"answer/check.action",//请求路径
			contentType:"application/x-www-form-urlencoded; charset=UTF-8",
			data:{//传参
			    checkid:checkid,
				subjectid:sid,
				choice:choiceval
			},
			success:function(data){
				$("#"+sid).html(data);
			}
			
		});		
	};
	
</script>
</head>

<body>
<jsp:include page="/navigation/navJsp.jsp"></jsp:include>


   <tbody>
	<s:iterator value="allSubject" var="v" status="s">
		<div class="cssraindemo">
		   <h3 >所选科目：${subject.allclass.classname }</h3>
			${s.count }、${v.subject.subjecttext }
			<ul>
				<li><input type="checkbox" name="${v.subject.subjectid }" value="A" />A：${v.subject.subjecta }</li>
				<li><input type="checkbox" name="${v.subject.subjectid }" value="B" />B：${v.subject.subjectb }</li>
				<li><input type="checkbox" name="${v.subject.subjectid }" value="C" />C：${v.subject.subjectc }</li>
				<li><input type="checkbox" name="${v.subject.subjectid }" value="D" />D：${v.subject.subjectd }</li>
				<li><input  type="button" value="提交" onClick="checkResult(${v.subject.subjectid })"/></li>
				<li id="${v.subject.subjectid }"></li>
			</ul>
		</div>
	</s:iterator>
  </tbody>
</body>
</html>
