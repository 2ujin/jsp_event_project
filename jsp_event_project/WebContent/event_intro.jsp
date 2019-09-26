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
      #table{
        width: 1180px;
        height: 200px;
        margin: auto;
        text-align: center;
      }
      #tr{
        padding: 10px;
        height: 170px;
      }
      #td{
         border-bottom: 1px dotted gray;
         font-family: 'NanumSquare';
      }
      #tbl,#button{
       	margin: auto;
        text-align: center;
      	margin-top: 100px;
      }
      #button{
      	margin-left: 1000px;
      }
    </style>

        <body onload="popupOpen();">
		  <div id="header"><br>
			<a href="main.jsp" id="img"><img src="https://img.jejuair.net/jejuair/images/jejuairlogo_kr.png" alt="JEJU air"></a>
			<a href="#">항공권 예매</a><a href="#">마이페이지</a><a href="#">서비스 안내</a><a href="event_intro.jsp">이벤트/새소식</a><a href="#">여행상품</a><a href="#">리프레시 포인트</a>
          </div>
        <%
        if(session.getAttribute("id").equals("admin")){
        	Connection conn = null;
        	PreparedStatement pstmt = null;
        	ResultSet rs = null; %>
        <table border=1 id="tbl">
        <caption>현재 등록한 유저</caption>
	<tr>
		<td width="100">아이디</td>
		<td width="100">이름</td>
		<td width="250">뜻</td>
		<td width="100">비고</td>
		<td width="100">버튼</td>
	</tr> <%	
        	try{
        		String url = "jdbc:mysql://localhost:3306/mirim";
        		String user = "root";
        		String pass = "1234";
        		
        		Class.forName("com.mysql.jdbc.Driver");
        		conn = DriverManager.getConnection(url, user, pass);
        		
        		String sql = "select * from event_tbl";
        		
        		pstmt = conn.prepareStatement(sql);
        		rs = pstmt.executeQuery();
        		
        		while(rs.next()){
        			String id = rs.getString("id"); //컬럼명이 id인 것 갖고옴
        			String name = rs.getString("name");
        			String mean = rs.getString("mean");
        			String remark = rs.getString("remark");
        			session.setAttribute("e_id", id);
        			%>
					<tr>
						<td><%= id %></td>
						<td><%= name %></td>
						<td><%= mean %></td>
						<td><%= remark %></td>
						<td><input type="button" value="비고" onclick="location.href='event_check.jsp?id=<%= session.getAttribute("e_id") %>'"></td>
					</tr>
        			
        	<%	} //while %>
        </table><input type="button" value="현재 순위보기" onclick="location.href='event_vote.jsp'" id="button">
        	<%  	} //try
        		catch(Exception e){
        			e.printStackTrace();
        		}
        		finally{
        			if(rs!=null){ try{ rs.close(); } catch(Exception e){ } }
        			if(pstmt!=null){ try{ pstmt.close(); } catch(Exception e){ } }
        			if(conn!=null){ try{ conn.close();  } catch(Exception e){ } }
        		}	
        }else{
        %>
          <div id="body">
          <h2>진행중인 이벤트</h2>
          <hr>
          <table id="table">
            <tr id="tr">
              <td id="td"><a href="event_1.jsp"><img src="img/event1_1.png"></a><br>
                한글날 한글이름 이벤트!
              </td>
              <td id="td"><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_KR_20190918_pointTHANKS.jpg"></a><br>
                싹 Three 패밀리 페스티벌
              </td>
            </tr>
            <tr id="tr">
              <td id="td"><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_kr_190916_zip.jpg"></a><br>
                떠나자 사이판!
              </td>
              <td id="td"><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_KR_20190905_HAPPYHOUR_LOUNGE.jpg"></a><br>
                싹 Three 패밀리 페스티벌
              </td>
            </tr>
            <tr id="tr">
              <td id="td"><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_KR_190916_TAIWAN.jpg"></a><br>
                떠나자 사이판!
              </td>
              <td id="td"><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_kr_360x105_190808_UnimilepromotionJeju.jpg"></a><br>
                싹 Three 패밀리 페스티벌
              </td>
            </tr>
            <tr id="tr">
              <td id="td"><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_KR_190918_Saipan.jpg"></a><br>
                떠나자 사이판!
              </td>
              <td id="td"><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_KR_190905_woori_r.jpg"></a><br>
                싹 Three 패밀리 페스티벌
              </td>
            </tr>
            <tr id="tr">
              <td id="td"><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_KR_20190903_IBK1.jpg"></a><br>
                떠나자 사이판!
              </td>
              <td id="td"><a href="#"><img src="https://img.jejuair.net/jejuair/cms/NOTICE/event/images/bl_pc_kr_190903_hotels.jpg"></a><br>
                싹 Three 패밀리 페스티벌
              </td>
            </tr>
          </table>
          </div>
          <% } %>
        </body>
        <script type="text/javascript">
		</script>
</html>