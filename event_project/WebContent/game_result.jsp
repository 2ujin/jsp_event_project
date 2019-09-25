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
    	background-color: #e65119;
    	overflow-y: hidden;
    	overflow-x: hidden;
    	font-family: 'NanumSquare';
    	 margin: auto;
        text-align: center;
  	  }
      h2{ 
        margin-top: 100px;
        color: white;
      }
      #show{
        margin:auto;
        width: 400px;
        height: 400px;
        background-color: white;
        opacity: 0.8;
        border-collapse: collapse;
        overflow: auto;
        padding-top: 0px;
       	margin-top: 20px;
      }
      code{
      font-size: 80px;
      }
      p{
      	margin: 10px;
      }
      h3{
      margin-top: 75px;
      color: blue;
      }
      #btn{
        border:none;
        width: 80px;
        height: 30px;
        border-radius: 20px;
      }
      #ticket{
      	width: 600px;
      	margin:auto;
      	margin-top: 30px;
      	
      }
    </style>
<body>
 <% 
    request.setCharacterEncoding("utf-8");
 	String result = request.getParameter("result"); 
 %>
 <div id="show">
    <% if(result.equals("success")){ %>
    	<h3>🎉 축하합니다 🎊 </h3><code>👏</code><br><p>당신은 이제 할로윈 파티에 <br><br> 참가하실 수 있습니다 !!</p><br>
    <% } else if(result.equals("fail")){ %>
		<h3>안타깝습니다 😭</h3><code>👎</code><br><p>조금만 힘을내서 다시 한번 <br><br> 도전해봐요! 으쌰으쌰 :-)</p><br>
	<% } %>
	<input type="button" id="btn" value="돌아가기" onclick="location.href='first_page.jsp'"/>
    </div>
    <div><img src="img/ticket.jpg" id="ticket"></div>
</body>
</html>