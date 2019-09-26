<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	try{
	String url = "jdbc:mysql://localhost:3306/mirim";
	String  user = "root";
	String pass = "1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);

	Statement st = conn.createStatement();

	String sql = "select * from member_tbl where id= '" + id + "'";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		String r_id = rs.getString("id"); //컬럼명이 id인 것 갖고옴
		String r_pw = rs.getString("pw");
		
		if(r_id.equals(id)){
			session.setAttribute("id", id);
			response.sendRedirect("main.jsp");
		}
		else{
			out.println("같지않아");
		}
	}
%>
	
	<code>zz   <%= id %></code>
	<div id ="result"></div><br>

<%	}  //while 
	finally{
		if(rs!=null){ try{ rs.close(); } catch(Exception e){ } }
		if(pstmt!=null){ try{ pstmt.close(); } catch(Exception e){ } }
		if(conn!=null){ try{ conn.close();  } catch(Exception e){ } }
	}
%>
</body>
</html>