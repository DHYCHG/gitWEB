<%@ page pageEncoding="utf-8" %>
<html>
<head>
	<title>学生管理系统-退出登录</title>
</head>
<%
	session.setAttribute("passcard", "no");
%>
<body>
	<center>
		<h1>退出登录成功</h1>
		<h4>5s后自动跳转</h4>
		<a href="index.html">或点击此处跳转</a>
	</center>
</body>
</html>

<%
	response.setHeader("refresh", "5;index.html");
%>