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
        background-color: #FCFCE5 ;
        /* width: 100%; */
        overflow-y: hidden;
        overflow-x: hidden;
        margin: 0;
        text-align:center;
      }
      div{
        margin: 10px;
        float: left;
        text-align: center;
        margin-left: 70px;
        /* margin-top: 0px; */
      }
      a{
        text-decoration: none;
        font-size: 120px;
        margin-left: 20px;
        text-align:center;
      }
      h2{
        margin-top: 20px;
        font-family: 'NanumSquare';
        color: gray;
      }
      img{
        width: 200px;
        margin-right: 150px;
      }
      #btn{
        border: none;
        background-color: #F0F0F0;
        width: 80px;
        height: 25px;
        border-radius: 80px;
        font-family: 'NanumSquare';
      }
    </style>
    <script>
      function move(){
        window.opener.top.location.href="event_intro.jsp";
        window.close();
        // location.href="main.html";
      }
    </script>
        <body>
          <h2>한글날 이벤트 🎉</h2>
          <div><a href="#"><img src="img/sejong.png"></a></div>
          <input type="button" id="btn" value="참여ㄱㄱ!" onclick="move()">
        </body>
</html>