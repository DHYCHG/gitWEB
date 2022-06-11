<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	String passcard = (String)session.getAttribute("passcard");
	if (!passcard.equals("ok") || passcard == null){
		response.sendRedirect("nolog.jsp");
		return;
	}

	String x = request.getParameter("x");
	String sql = "delete from t_score where id="+x;
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/web_student";
	String username = "root";
	String password = "12345";

	Connection conn = DriverManager.getConnection(url,username,password);
	Statement stmt = conn.createStatement();
	int i = stmt.executeUpdate(sql);

	response.sendRedirect("view7.jsp");
%>
