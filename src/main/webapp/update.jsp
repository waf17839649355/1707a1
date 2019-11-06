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
	请输入用户名:<input type="text" name="username" value="${user.username}"><br><br>
	请输入密码:<input type="text" name="password" id="password"><br><br>
	请输入再次密码:<input type="text" id="password1"><br><br>
	<input type="button" value="修改密码" onclick="update()">
	<input type="button" value="重置" onclick="del()">
	</form>
</body>
<script type="text/javascript">
function update(){
	var password=$("#password").val();
	var password1=$("#password1").val();
	if(password == password1){
		$.post(
			"update",
			$("form").serialize(),
			function(obj){
				if(obj != null){
					alert("修改成功!!")
					location="login.jsp"
				}else{
					alert("修改失败!!")
				}
			},
			"json"
		)
	}else{
		alert("两次输入的密码不同，请重新输入密码！！")
		
	}
}
</script>
</html>