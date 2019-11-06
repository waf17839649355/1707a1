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
${user.username}<a href="update.jsp"><input type="button" value="修改密码"></a>
	<table>
	<tr>
	<td>xx</td>
	<td>xx</td>
	<td>xx</td>
	<td>xx</td>
	<td>xx</td>
	<td>xx</td>
	<td>xx</td>
	<td>xx</td>
	<td>xx</td>
	</tr>
	<c:forEach items="${list}" var="l">
	<tr>
	<td>${l.id}</td>
	<td>${l.username }</td>
	<td>${l.password }</td>
	<td>${l.nickname }</td>
	<td>${l.birthday }</td>
	<td>${l.gender }</td>
	<td>${l.locked }</td>
	<td>${l.created }</td>
	<td>${l.updated }</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>