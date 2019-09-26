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
request.setCharacterEncoding("utf-8");  //Set encoding
String id  = request.getParameter("id");

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/mirim?useUnicode=true&characterEncoding=utf8";
  Connection con = DriverManager.getConnection(url,"root","1234");
  Statement stat = con.createStatement();

  String query = "update event_tbl set remark = 'check' where id = '" + id + "'";
  response.sendRedirect("event_intro.jsp");
  stat.executeUpdate(query);
  stat.close();
  con.close();
 }
 catch(Exception e){
  out.println( e );
 }
%>
</body>
</html>