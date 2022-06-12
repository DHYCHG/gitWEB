<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	String passcard = (String)session.getAttribute("passcard");
	if (passcard == null || !passcard.equals("ok")){
		response.sendRedirect("nolog.jsp");
		return;
	}

	String id = request.getParameter("id");
	String x = request.getParameter("x");
	String name = request.getParameter("name");
	String class_name = request.getParameter("class_name");

	String sql = "insert into t_score(id, name, class_name, score) values( '"+id+"', '"+name+"', '"+class_name+"', '"+x+"' )";
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/web_student";
	String username = "root";
	String password = "12345";

	Connection conn = DriverManager.getConnection(url,username,password);
	Statement stmt = conn.createStatement();
	int i = stmt.executeUpdate(sql);

	response.sendRedirect("view7.jsp");
%>
