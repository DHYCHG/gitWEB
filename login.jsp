<%@ page import="java.sql.*" %>
<%@ page pageEncoding="utf-8"%>
<%
	String myUsername = request.getParameter("x");
	String myPass = request.getParameter("y");

	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/web_student";
	String username = "root";
	String password = "12345";

	//建立连接，得到连接对象
	Connection con = DriverManager.getConnection(url, username , password);
	
	String sql = "select * from t_user where username= ? and password= ? ";

	PreparedStatement stmt = con.prepareStatement(sql);	
	stmt.setString(1, myUsername);
	stmt.setString(2, myPass);
	ResultSet rs  = stmt.executeQuery();

	if(rs.next()){
		session.setAttribute("passcard", "ok");
		response.sendRedirect("view7.jsp");
	}
	else{
		response.sendRedirect("error.jsp");
	}

%>
