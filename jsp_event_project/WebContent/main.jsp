<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 | 제주항공</title>
</head>
    <style>
		@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
		body{
			overflow-y: hidden;
			overflow-x: hidden;
		}
			#top{
				width: 100%;
				height: 40px;
				background-color: #F58220;
				margin: -9px;
			}
			#header{
			width: 100%;
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
			#img{
				width: 100%;
				margin-top: 9px;
				margin-left: 24px;
			}
			#aa{
				width: 98%;
			}
			#up{
				position: absolute;
				top: 180px;
				left: 120px;
				height: 200px;
				width: 350px;
				opacity: 0.8;
			}
			#code{
				position: absolute;
				top: 200px;
				left: 140px;
				font-family: 'NanumSquare';
				font-size: 30px;
				color: white;
				padding: 10px;
			}
			#code2{
				position: absolute;
				top: 290px;
				left: 140px;
				font-family: 'NanumSquare';
				font-size: 17px;
				color: white;
				padding: 10px;
			}
    </style>
		<script type="text/javascript">
		function popupOpen(){
			var popUrl = "popup.jsp";	//팝업창에 출력될 페이지 URL
			var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
				window.open(popUrl,"",popOption);
			}
		function popupOpen1(){
			var popUrl = "winning.jsp";	//팝업창에 출력될 페이지 URL
			var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
				window.open(popUrl,"",popOption);
			}
		</script>
        
        
        <%	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
        		String url = "jdbc:mysql://localhost:3306/mirim";
        		String user = "root";
        		String pass = "1234";
        		
        		Class.forName("com.mysql.jdbc.Driver");
        		conn = DriverManager.getConnection(url, user, pass);
        		
        		String p_id = (String)session.getAttribute("id");
        		
        		String sql = "select * from event_tbl where winning = 'yes' and id = '" + p_id + "'";
        		
        		pstmt = conn.prepareStatement(sql);
        		rs = pstmt.executeQuery();
        		
        		while(rs.next()){
        			String id = rs.getString("id"); //컬럼명이 id인 것 갖고옴
        			System.out.print(id);
        			%>
				<body onload="popupOpen1();">
        			
        	<%	} //while %>
				<body onload="popupOpen();">
					<div id="top">
					<%
						if(session.getAttribute("id")==null){
							%><a href="login.jsp" id="a">로그인 </a><a href="#" id="a2">|</a><a href="signup.jsp">회원가입</a></div><% 
						}else if(session.getAttribute("id").equals("admin")){ %>
							<a href="login.jsp" id="a"> 관리자님이 로그인하셨습니다.</a><a href="#" id="a2">|</a><a href="logout.jsp">로그아웃</a></div>
						<% }
						else{
							String id = (String)session.getAttribute("id");
						%> <a href="login.jsp" id="a"> <%= id %>님 환영합니다! </a><a href="#" id="a2">|</a><a href="logout.jsp">로그아웃</a></div>
					<%	}
					%>
					<div id="header"><br>
						<a href="main.jsp" id="img"><img src="https://img.jejuair.net/jejuair/images/jejuairlogo_kr.png" alt="JEJU air" ></a>
						<a href="#">항공권 예매</a><a href="#">마이페이지</a><a href="#">서비스 안내</a><a href="event_intro.jsp">이벤트/새소식</a><a href="#">여행상품</a><a href="#">리프레시 포인트</a>
					</div>
					<div id="img">
						<img src="https://img.jejuair.net/jejuair/cms/MAIN/main/images/bm_pc_KR_190916_TAIWANimg.jpg" alt="[속보] 대만 맛집! 신규취항 메뉴출시" id="aa">
					</div>
					<img src="https://www.jejuair.net/jejuair/images/bg_main_label.png" id="up"><code id="code">[속보] 대만 맛집!<br>신규취항 메뉴출시</code><code id="code2">제주/부산 출발 대만 편도총액 62,800원~<br>09.16 ~ 09.30, 2019</code>
      </body>
</html>