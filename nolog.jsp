<%@ page pageEncoding="utf-8" %>
<html>
<head>
	<title>学生管理系统-未登录</title>
</head>

<body>
	<center>
		<h1>当前未登录，请先登录</h1>
		<h4>5s后自动跳转</h4>
		<a href="index.html">或点击此处跳转</a>
	</center>
</body>
</html>

<%
	response.setHeader("refresh", "5;index.html");
%>