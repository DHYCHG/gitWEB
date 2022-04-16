<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
		String x = request.getParameter("x");
		String sql = "delete from t_score where id="+x;
		Class.forName("com.hxtt.sql.access.AccessDriver");
		String url = "jdbc:Access:///d:\\demo.accdb";
		String username = "";
		String password = "";

		Connection conn = DriverManager.getConnection(url,username,password);
		Statement stmt = conn.createStatement();
		int i = stmt.executeUpdate(sql);

		response.sendRedirect("view7.jsp");
%>
