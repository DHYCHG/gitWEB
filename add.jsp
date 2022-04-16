<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
		String id = request.getParameter("id");
		String x = request.getParameter("x");
		String name = request.getParameter("name");
		String class_name = request.getParameter("class_name");

		String sql = "insert into t_score(id, name, class_name, score) values( '"+id+"', '"+name+"', '"+class_name+"', '"+x+"' )";
		Class.forName("com.hxtt.sql.access.AccessDriver");
		String url = "jdbc:Access:///d:\\demo.accdb";
		String username = "";
		String password = "";

		Connection conn = DriverManager.getConnection(url,username,password);
		Statement stmt = conn.createStatement();
		int i = stmt.executeUpdate(sql);

		response.sendRedirect("view7.jsp");
%>
