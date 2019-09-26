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
	String id = (String)session.getAttribute("id");
	String name = request.getParameter("name");
	String mean = request.getParameter("mean");
	
	 try{
		  Class.forName("com.mysql.jdbc.Driver");
		  String url="jdbc:mysql://localhost:3306/mirim?useUnicode=true&characterEncoding=utf8";
		  Connection con = DriverManager.getConnection(url,"root","1234");
		  Statement stat = con.createStatement();

		  String query = "insert into event_tbl values('" + id + "', ' " + name +  "', ' "+ mean + "','" + "unchecked" + "','"+ 0 + "')";
		  response.sendRedirect("event_vote.jsp");
		  stat.executeUpdate(query);
		  stat.close();
		  con.close();
		 }
		 catch(Exception e){
		  out.println( e );
		 }
%>

<%= name %>
<%= mean %>

</body>
</html>