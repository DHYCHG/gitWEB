<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%		
		String id = request.getParameter("id");
		String x = request.getParameter("x");

		String sql = "update t_score set score="+x+" where id="+id;
		Class.forName("com.hxtt.sql.access.AccessDriver");
		String url = "jdbc:Access:///d:\\demo.accdb";
		String username = "";
		String password = "";

		Connection conn = DriverManager.getConnection(url,username,password);
		Statement stmt = conn.createStatement();
		int i = stmt.executeUpdate(sql);

		response.sendRedirect("view7.jsp");
%>
