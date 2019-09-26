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
    <style>
		@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
		body{
			/* overflow-y: hidden; */
			overflow-x: hidden;
			     	margin: 0, auto;
			     	
		}
			#top{
				width: 2000px;
				height: 40px;
				background-color: #F58220;
				margin: -9px;
			}
			#header{
				width: 2000px;
				height: 100px;
				background-color: #F15A22;
				margin: -9px;
			}
			#header > #img{
				margin-top: 25px;
				margin-left: 170px;
			}
			#header > a{
				margin-left: 30px;
				font-family: 'NanumSquare';
				font-weight: bold;
				color: white;
				text-decoration: none;
			}
			#top > a{
				font-family: 'NanumSquare';
				color: white;
				font-size: 14px;
				text-decoration: none;
			}
			#top > #a{
				margin-left: 190px;
				margin-right: 20px;
				/* margin-top: 2px; */
				font-family: 'NanumSquare';
				color: white;
				font-size: 14px;
				text-decoration: none;
			}
			#a2{
					margin-right: 20px;
			}
      #body{
        padding: 40px;
      }
     	h1{
     	font-family: 'NanumSquare';
     	font-size: 50px;
     	text-align: center;
     	}
     	#big{
     	text-align: center;
     	 width: 1000px;
     	 background-color: black;

     	 margin-left: 420px;
     	}
     	#box{
     	 width: 100px;
     	 height: 180px;
     	 border-radius: 20px;
     	 padding: 10px;
     	 background-color: #F58220;
     	 margin-bottom: 20px;
     	 margin-right: 20px;
     	 text-align: center;
     	 font-family: 'NanumSquare';
     	 display: inline-block;
     	 float: left;
     	 color: white;
     	}
		#id{
		 font-size: 10px;
		 margin-bottom: 20px;
		 color: white;
		}
    </style>
        <body>
		  <div id="header"><br>
			<a href="main.jsp" id="img"><img src="https://img.jejuair.net/jejuair/images/jejuairlogo_kr.png" alt="JEJU air"></a>
			<a href="#">항공권 예매</a><a href="#">마이페이지</a><a href="#">서비스 안내</a><a href="event_intro.jsp">이벤트/새소식</a><a href="#">여행상품</a><a href="#">리프레시 포인트</a>
          </div>
          <div id="body">
          <% if(session.getAttribute("id").equals("admin")){ %>
			<input type="button" value="투표마감" onclick="location.href='vote_end.jsp'">
		  <%} %>
          <h1>🏆 </h1>

<%
	String date = request.getParameter("date");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		
	String url = "jdbc:mysql://localhost:3306/mirim";
	String user = "root";
	String pass = "1234";
	
//	out.println("9월" + date + "일"); 
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);
	
	String sql = "select * from event_tbl where remark='check' order by vote desc";
	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		String id = rs.getString("id"); //컬럼명이 id인 것 갖고옴
		String name = rs.getString("name");
		String mean = rs.getString("mean");
		session.setAttribute("v_id", id);
%>
		<div id="big">
		<div id="box">
			<a id="id">아이디: <%= id %></a><br><br>
			<a id="name">이름: <%= name %></a><br><br> <!-- 이름 -->
			<a id="mean">뜻:<br><%= mean %></a><br><br> <!-- 뜻 -->
			<% if(session.getAttribute("id").equals("admin")){	
			}else{%>
			<a id="mean"><input type="button" value="투표" onclick="location.href='vote.jsp?id=<%= session.getAttribute("v_id") %>'"></a><br>
			<%} %>
		</div>
		</div>
		</table>

<%	} //while
	} //try
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		if(rs!=null){ try{ rs.close(); } catch(Exception e){ } }
		if(pstmt!=null){ try{ pstmt.close(); } catch(Exception e){ } }
		if(conn!=null){ try{ conn.close();  } catch(Exception e){ } }
	}
%>
</div>
</body>
</html>