<%@ page language="java" import="java.util.* " pageEncoding="utf-8"%>
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

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/easyui.css">
<link rel="stylesheet" type="text/css" href="css/icon.css">
<style type="text/css">
	.mytable {  
    table-layout: fixed;  
    width: 98% border:0px;  
    border:1px solid #cad9ea; 
    table-layout:fixed; 
	empty-cells:show; 
	border-collapse: collapse; 
	margin:0 auto; 
	bgcolor:#E8E8E8;
}  
  
.mytable tr td {  
    text-overflow: ellipsis; /* for IE */  
    -moz-text-overflow: ellipsis; /* for Firefox,mozilla */  
    overflow: hidden;  
    white-space: nowrap;  
    border: 1px solid; 
    text-align: left  
} 
</style>  
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<style> li {list-style-type:none;}</style>
<script type="text/javascript">
	  function showcontent(classid){
			$.ajax({
			type:"post",//请求方式
			url:"answer/subject_list.action",//请求路径
			data:{//传参
				classid:classid,
			},
			dataType:"json",//数据格式
			success : function(datajson) {
			       //清空显示层中的数据
			        $("#message").html("");
		            var arr = datajson;  
		            var radio = "radio";
					$.each(arr, function(index, content)
					{ 
					  //单选题与多选题判断 
                      if (content.resulter.length>1){
                             radio = "checkbox";
							  }
							else{
							 radio = "radio";
							  }; 
					var obj = "<fieldset><ul><li><h3><xmp>"+(index+1)+"、"+content.subjecttext+"</xmp></h3></li><hr/><li><input name='"+content.subjectid+"' type='"+radio+"' value='A'/>A、"+content.subjecta+"</li><li><input name='"+content.subjectid+"' type='"+radio+"' value='B'/>B、"+content.subjectb+" </li><li><input name='"+content.subjectid+"' type='"+radio+"' value='C'/>C、"+content.subjectc+" </li><li><input name='"+content.subjectid+"' type='"+radio+"' value='D'/>D、"+content.subjectd+" </li><li><input  type='button' value='提交' onclick='checkResult("+content.subjectid+")'/><span id='"+content.subjectid+"'></span></li><ul></fieldset><br/>";                     
					 $("#message").append(obj);
					});
				},
			error:function(datajson){ 
			          alert("error"); 
			},
		   });	
		}; 
		function checkResult(sid){
		var choiceval = "";
		$("input[name='"+sid+"']").each(function() { 
			if($(this).attr("checked"))
			{
				choiceval=choiceval+$(this).val();
			}
		});
		$.ajax({
			type:"post",//请求方式
			url:"answer/check.action",//请求路径
			data:{//传参
				subjectid:sid,
				choice:choiceval
			},
			success:function(data){
				$("#"+sid).html(data);
			}
			
		});		
	};
	//根据id查询题目,错题
	function onetitle(sid){
		$.ajax({
			type:"post",//请求方式
			url:"answer/onetitle.action",//请求路径
			dataType:"json",
			data:{//传参
				subjectid:sid,
			},
			success : function(content) {
				   //清空显示层中的数据
				   
				  // $("#message").html("");
				   $("#searchShow").html("");
				   var radio = "radio";
				    //单选题与多选题判断 
                      if (content.resulter.length>1){
                             radio = "checkbox";
							  }
							else{
							 radio = "radio";
							 }; 
			       var obj = "<fieldset><ul><li><h3><xmp>"+content.subjecttext+"</xmp></h3></li><hr/><li><input name='"+content.subjectid+"' type='"+radio+"' value='A'>A、"+content.subjecta+" </input></li><li><input name='"+content.subjectid+"' type='"+radio+"' value='B'/>B、"+content.subjectb+" </li><li><input name='"+content.subjectid+"' type='"+radio+"' value='C'/>C、"+content.subjectc+" </li><li><input name='"+content.subjectid+"' type='"+radio+"' value='D'/>D、"+content.subjectd+" </li><li><input  type='button' value='提交' onclick='checkResult("+content.subjectid+")'/><span id='"+content.subjectid+"'></span></li><ul></fieldset><br/>";                     
			       $("#searchShow").append(obj);
				},
		});		
	  };
	  //根据id查询题目
	function searchtitle(sid){
		$.ajax({
			type:"post",//请求方式
			url:"answer/onetitle.action",//请求路径
			dataType:"json",
			data:{//传参
				subjectid:sid,
			},
			success : function(content) {
				   $("#searchShow").html("");//清空显示层中的数据
				   var radio = "radio";
				    //单选题与多选题判断 
                      if (content.resulter.length>1){
                             radio = "checkbox";
							  }
							else{
							 radio = "radio";
							 }; 
			       var obj = "<fieldset><ul><li><h3><xmp>"+content.subjecttext+"</xmp></h3></li><hr/><li><input name='"+content.subjectid+"' type='"+radio+"' value='A'>A、"+content.subjecta+" </input></li><li><input name='"+content.subjectid+"' type='"+radio+"' value='B'/>B、"+content.subjectb+" </li><li><input name='"+content.subjectid+"' type='"+radio+"' value='C'/>C、"+content.subjectc+" </li><li><input name='"+content.subjectid+"' type='"+radio+"' value='D'/>D、"+content.subjectd+" </li><li><input  type='button' value='提交' onclick='checkResult("+content.subjectid+")'/><span id='"+content.subjectid+"'></span></li><hr/><li><h3>正确答案:"+content.resulter+"</h3></li><ul></fieldset><br/>";                     
			       $("#searchShow").append(obj);
				},
		});		
	  };
$(function() {  //easyui组件封装以这种方式触发按钮
            $("#searchtxt").textbox("textbox").bind("keyup", function() {  
               $("#searchShow").html("");
	            var time=new Date().getTime();
	            var searchContent = $("#searchtxt").val();
	           // alter(searchContent.length);
	            if (searchContent.length > 1) {
	               $.ajax({
								type: "post",
								url: "answer/searchlike.action",
								data:{//传参
										searchContent:searchContent,
										time:time
								   	},
								success:function(datajson){
								var jsonarry = datajson;  
								    $.each(jsonarry,function(index,content){
								    var searchdiv = "<p align='left'>&ensp;&ensp;&ensp;&ensp;<a herf='javascript:;' onclick='searchtitle("+content.subjectid+");'>"+content.subjecttext+"</a></p><hr/>";								  
								    $("#searchShow").append(searchdiv);
								    });
													},
								error:function(data){ 
														 alert("error"); 
														},
								});
	            }  
            });  
         });
	/*function errorList(userid){
             $.ajax({
			type:"post",//请求方式
			url:"answer/errorJsonList.action",//请求路径
			dataType:"json",
			data:{//传参
				userid:userid,
			},
			success : function(content) {
				   $("#searchShow").html("");//清空显示层中的数据
				   var radio = "radio";
				    //单选题与多选题判断 
                      if (content.resulter.length>1){
                             radio = "checkbox";
							  }
							else{
							 radio = "radio";
							 }; 
			       var obj = "<fieldset><ul><li><h3><xmp>"+content.subjecttext+"</xmp></h3></li><hr/><li><input name='"+content.subjectid+"' type='"+radio+"' value='A'>A、"+content.subjecta+" </input></li><li><input name='"+content.subjectid+"' type='"+radio+"' value='B'/>B、"+content.subjectb+" </li><li><input name='"+content.subjectid+"' type='"+radio+"' value='C'/>C、"+content.subjectc+" </li><li><input name='"+content.subjectid+"' type='"+radio+"' value='D'/>D、"+content.subjectd+" </li><li><input  type='button' value='提交' onclick='checkResult("+content.subjectid+")'/><span id='"+content.subjectid+"'></span></li><hr/><li><h3>正确答案:"+content.resulter+"</h3></li><ul></fieldset><br/>";                     
			       $("#searchShow").append(obj);
				},
		});		
	};		*/
	
     	</script>
</head>
<body class="easyui-layout">
        <jsp:include page="/navigation/nav.jsp"></jsp:include>
		<div data-options="region:'west',split:true,title:'科目'" style="width:18%;padding:10px;" >
		     <ul style="font-size:22px">
				<s:iterator value="allclassList" var="v" status="s">
					<li><span  onclick="showcontent(${v.classid });"><a href="javascript:;">${v.classname}</a></span></li>
				</s:iterator>
			</ul>
	    </div>
	    <div data-options="region:'east',split:true,collapsed:true,title:'错题(<s:property value="allErrorsubject.size()"/>道) '" style="width:16%;padding:10px;">		
		     <s:iterator value="allErrorsubject" var="v" status="s">
				 <table class="mytable" width="200px" >
				     <tr>
				       <td>编&ensp;&ensp;&ensp;&ensp;号</td>
				       <td>${s.count }</td>
				     </tr>
				     <tr>
				       <td>科&ensp;&ensp;&ensp;&ensp;目</td>
				       <td>${v.subject.allclass.classname }</td>
				     </tr>
				     <tr>
				       <td>错误次数</td>
				       <td>${v.errordegree }</td>
				     </tr>
				     <tr>
				       <td>错误时间</td>
				       <td>${v.errordate }</td>
				     </tr>
				     <tr>
				       <td colspan="2" align="center"><a href="javascript:;" onclick="searchtitle(${v.subject.subjectid})"><strong>&ensp;&ensp;查&ensp;&ensp;&ensp;&ensp;看&ensp;&ensp;&ensp;&ensp;详&ensp;&ensp;&ensp;&ensp;情</strong></a></td>
				     </tr>
				 </table><br/>
			  </s:iterator>
		</div>
		<div data-options="region:'south',border:false" style="height:45px;background:#A9FACD;padding:10px;">
        
       <p align="center">Copyright@2016-2017 浙ICP备160465465号-1</p>
       </div>
       
		<div id="message" data-options="region:'center',title:'题目'">
			             &ensp;&ensp;&ensp;&ensp;
			             <input id="searchtxt" class="easyui-textbox" buttonText="搜&ensp;&ensp;索"  style="width:95%;height:30px;" /><hr/>
			             <span id="searchShow"><p align="center">提供对题库的搜索</p></span>
		</div>
</body>
</html>
