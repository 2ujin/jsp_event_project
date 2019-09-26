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
     	#tbl{
       	margin: auto;
        text-align: center;
      	margin-top: 100px;
      }
</style>
<body>
		  <div id="header"><br>
			<a href="main.jsp" id="img"><img src="https://img.jejuair.net/jejuair/images/jejuairlogo_kr.png" alt="JEJU air"></a>
			<a href="#">항공권 예매</a><a href="#">마이페이지</a><a href="#">서비스 안내</a><a href="event_intro.jsp">이벤트/새소식</a><a href="#">여행상품</a><a href="#">리프레시 포인트</a>
          </div>
          <div id="body">
<table border=1 id="tbl">
	<tr>
		<td width="100">아이디</td>
		<td width="100">이름</td>
		<td width="250">뜻</td>
		<td width="100">투표수</td>
		<td width="100">당첨여부</td>
		<td width="100">당첨</td>
		<td width="100">당첨취소</td>
	</tr> <%	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
        		String url = "jdbc:mysql://localhost:3306/mirim";
        		String user = "root";
        		String pass = "1234";
        		
        		Class.forName("com.mysql.jdbc.Driver");
        		conn = DriverManager.getConnection(url, user, pass);
        		
        		String sql = "select * from event_tbl order by vote desc";
        		
        		pstmt = conn.prepareStatement(sql);
        		rs = pstmt.executeQuery();
        		
        		while(rs.next()){
        			String id = rs.getString("id"); //컬럼명이 id인 것 갖고옴
        			String name = rs.getString("name");
        			String mean = rs.getString("mean");
        			String winning = rs.getString("winning");
        			String vote = rs.getString("vote");
        			session.setAttribute("e_id", id);
        			%>
					<tr>
						<td><%= id %></td>
						<td><%= name %></td>
						<td><%= mean %></td>
						<td><%= vote %></td>
						<td><%= winning %></td>
						<td><input type="button" value="당첨" onclick="location.href='win_vote.jsp?id=<%= session.getAttribute("e_id") %>'"></td>
						<td><input type="button" value="당첨취소" onclick="location.href='win_vote_cancle.jsp?id=<%= session.getAttribute("e_id") %>'"></td>
					</tr>
        			
        	<%	} //while %>
        	</table>
        </div>
</body>
</html>