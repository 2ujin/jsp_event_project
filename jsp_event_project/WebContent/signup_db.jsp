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
 String id  =        request.getParameter("id");            
 String name =   request.getParameter("name");
 String pw =     request.getParameter("pw");
 String email =     request.getParameter("email");
 String phone  =   request.getParameter("phone");
//POST로 Input.html로부터 입력받은 내용을 변수화

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/mirim?useUnicode=true&characterEncoding=utf8";
  Connection con = DriverManager.getConnection(url,"root","1234");
  Statement stat = con.createStatement();

  String query = "insert into member_tbl values('" + id + "','" + pw +  "','"+ name + "','" + email + "','" +  phone + "')";
  response.sendRedirect("main.jsp");
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