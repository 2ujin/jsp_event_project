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
      #body{
        padding: 40px;
      }
      h2{
        font-family: 'NanumSquare';
      }
      table{
        width: 1180px;
        height: 200px;
        margin: auto;
        text-align: center;
      }
      tr{
        padding: 10px;
        height: 170px;
      }
      td{
         border-bottom: 1px dotted gray;
         font-family: 'NanumSquare';
      }
    </style>
		<script type="text/javascript">
		</script>
        <body onload="popupOpen();">
					<div id="header">
						<img src="https://img.jejuair.net/jejuair/images/jejuairlogo_kr.png" alt="JEJU air">
						<a href="#">항공권 예매</a><a href="#">마이페이지</a><a href="#">서비스 안내</a><a href="event_intro.jsp">이벤트/새소식</a><a href="#">여행상품</a><a href="#">리프레시 포인트</a>
          </div>
          <div id="body">
          <h2>진행중인 이벤트</h2>
          <hr>
          <table>
            <tr>
              <td><a href="event_1.jsp"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_KR_190918_Saipan.jpg"></a><br>
                한글날 한글이름 이벤트!
              </td>
              <td><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_KR_20190918_pointTHANKS.jpg"></a><br>
                싹 Three 패밀리 페스티벌
              </td>
            </tr>
            <tr>
              <td><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_kr_190916_zip.jpg"></a><br>
                떠나자 사이판!
              </td>
              <td><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_KR_20190905_HAPPYHOUR_LOUNGE.jpg"></a><br>
                싹 Three 패밀리 페스티벌
              </td>
            </tr>
            <tr>
              <td><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_KR_190916_TAIWAN.jpg"></a><br>
                떠나자 사이판!
              </td>
              <td><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_kr_360x105_190808_UnimilepromotionJeju.jpg"></a><br>
                싹 Three 패밀리 페스티벌
              </td>
            </tr>
          </table>
          </div>
        </body>
</html>