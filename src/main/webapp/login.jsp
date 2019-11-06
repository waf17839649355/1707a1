<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css"/> 
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
</head>
<body>
	<form>
	用户名:<input type="text" name="username"><br><br>
	密码:<input type="text" name="password"><br><br>
	<input type="button" value="登录" onclick="login()">
	<input type="button" value="注册" onclick="resoue()">
	</form>
</body>
<script type="text/javascript">
	function login(){
		var username=$("[name=username]").val();
		var password=$("[name=password]").val();
		if(username != null && password != null){
			$.post(
				"login",
				$("form").serialize(),
				function(obj){
					if(obj != null){
						alert("登录成功！！")
						location="list"
					}else{
						alert("用户名或密码输入错误！！")
					}
				},
				"json"
			)
		}else{
			alert("用户名或密码不能为空！！")
		}
	}
	function resoue(){
		location="resues.jsp"
	} 
</script>
</html>