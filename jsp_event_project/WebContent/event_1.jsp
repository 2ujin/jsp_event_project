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
      #body{
        padding: 40px;
      }
      h2{
        font-family: 'NanumSquare';
      }
      .event-top{
        margin: auto;
        text-align: center;
      }
    </style>
		<script type="text/javascript">
		</script>
        <body">
					<div id="header">
						<img src="https://img.jejuair.net/jejuair/images/jejuairlogo_kr.png" alt="JEJU air">
						<a href="#">항공권 예매</a><a href="#">마이페이지</a><a href="#">서비스 안내</a><a href="event_intro.jsp">이벤트/새소식</a><a href="#">여행상품</a><a href="#">리프레시 포인트</a>
          </div>
          <div id="body">
          <h2>진행중인 이벤트</h2>
          <hr>
		  <div class="event-top" style="font-size:0; line-height:0;">
			<img src="img/event.png" width="924" usemap="#Map1" border="0">
			<map name="Map1">
			<area shape="rect" coords="172,1031,752,1111" href="event_go.jsp" alt="버튼_예매하기 ">
			</map>
		  </div>
          </div>
        </body>
</html>