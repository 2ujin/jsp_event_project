<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진행중인 이벤트 | 이벤트</title>
</head>
    <style>
		@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
		body{
			/* overflow-y: hidden; */
			overflow-x: hidden;
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
      h2{
        font-family: 'NanumSquare';
      }
	  #text1{
	  position: absolute;
	  top: 900px;
	  left: 700px;
		width: 500px;
		height: 55px;
		font-family: 'NanumSquare';
		padding: 5px;
	  }
	  #text2{
	  position: absolute;
	  top: 1000px;
	  left: 700px;
		width: 500px;
		height: 55px;
		font-family: 'NanumSquare';
		padding: 5px;
	  }
	  #btn{
	  position: absolute;
	  background-color: white;
	  border: 3px solid #ff5102;
	  top: 1170px;
	  left: 700px;
		width: 500px;
		height: 55px;
		color: #ff5102;
		font-family: 'NanumSquare';
		font-weight: bold;
		font-size: 20px;
	  }
	  #btn1{
	  position: absolute;
	  background-color: white;
	  border: 3px solid #ff5102;
	  top: 1240px;
	  left: 700px;
		width: 500px;
		height: 55px;
		color: #ff5102;
		font-family: 'NanumSquare';
		font-weight: bold;
		font-size: 20px;
	  }
	 .event-top{
        margin: auto;
        text-align: center;
      }
      h3{
      position: absolute;
	  top: 830px;
	  left: 920px;
	  font-family: 'NanumSquare';
      }
    </style>
		<script type="text/javascript">
		</script>
        <body>
			<div id="header"><br>
				<a href="main.jsp" id="img"><img src="https://img.jejuair.net/jejuair/images/jejuairlogo_kr.png" alt="JEJU air"></a>
				<a href="#">항공권 예매</a><a href="#">마이페이지</a><a href="#">서비스 안내</a><a href="event_intro.jsp">이벤트/새소식</a><a href="#">여행상품</a><a href="#">리프레시 포인트</a>
          </div>
          <div id="body">
          <%
      	Connection conn = null;
      	ResultSet rs = null;
      	PreparedStatement pstmt = null;
      	String id = (String)session.getAttribute("id");
      	
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
      			String name = rs.getString("name"); //컬럼명이 id인 것 갖고옴
      			out.println(name);
      			session.setAttribute("name", name);
      		}
      		
          %>
          <%	}  //while 
	finally{
		if(rs!=null){ try{ rs.close(); } catch(Exception e){ } }
		if(pstmt!=null){ try{ pstmt.close(); } catch(Exception e){ } }
		if(conn!=null){ try{ conn.close();  } catch(Exception e){ } }
	}
%>
          <h2>한글날 한글이름 이벤트</h2>
          <hr>
          <div id="event">
          		  <div class="event-top" style="font-size:0; line-height:0;">
			<img src="img/join_event_1.png" width="924" usemap="#Map1" border="0">
			<map name="Map1">
			<area shape="rect" coords="172,1031,752,1111" href="event_go.jsp" alt="버튼_예매하기 ">
			</map>
		  </div>
		  <h3>이벤트 참여</h3>
		  <form action="event_db.jsp" method="post">
          <input type="text" value="<%= session.getAttribute("name") %>" readonly id="text1" name="name">
          <input type="text" value="" id="text2" placeholder="이름의 뜻을 적어주세요!" name="mean" required>
          <input type="submit" value="참여하기" id="btn">
          </form>
          <input type="submit" value="구경가기" id="btn1" onclick="location.href='event_vote.jsp'">
          </div>
          </div>
        </body>
</html>