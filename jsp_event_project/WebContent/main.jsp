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
			#header > img{
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
				margin-top: 9px;
				margin-left: 24px;
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
		</script>
        <body onload="popupOpen();">
					<div id="top"><a href="login.jsp" id="a">로그인 </a><a href="#" id="a2">|</a><a href="signup.jsp">회원가입</a></div>
					<div id="header">
						<img src="https://img.jejuair.net/jejuair/images/jejuairlogo_kr.png" alt="JEJU air">
						<a href="#">항공권 예매</a><a href="#">마이페이지</a><a href="#">서비스 안내</a><a href="event_intro.jsp">이벤트/새소식</a><a href="#">여행상품</a><a href="#">리프레시 포인트</a>
					</div>
					<div id="img">
						<img src="https://img.jejuair.net/jejuair/cms/MAIN/main/images/bm_pc_KR_190916_TAIWANimg.jpg" alt="[속보] 대만 맛집! 신규취항 메뉴출시">
					</div>
					<img src="https://www.jejuair.net/jejuair/images/bg_main_label.png" id="up"><code id="code">[속보] 대만 맛집!<br>신규취항 메뉴출시</code><code id="code2">제주/부산 출발 대만 편도총액 62,800원~<br>09.16 ~ 09.30, 2019</code>
      </body>
</html>