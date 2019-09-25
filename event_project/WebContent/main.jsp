<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>🎃Halloween day</title>
</head>
    <style>
       @import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
      body{
        background-color: #e65119;
        /* width: 100%; */
        overflow-y: hidden;
        overflow-x: hidden;
      }
      h1{
        font-size: 200px;
        text-align: center;
        position: absolute;
        margin-left: 38.5%;
      }
      h3{
        text-align: center;
        /* position:absolute; */
        /* margin-left: 44%; */
        margin-top: 440px;
        font-family: 'NanumSquare';
        font-weight: 1000;
        color: white;
      }
      #header{
        text-align: center;
        /* position: absolute; */
        margin-top: 40px;
        /* padding: 10px;
        margin-left: 42%; */
      }
      a{
        text-align: center;
        text-decoration: none;
        color: white;
        margin: 10px;
        font-size: 12px;
      }
    </style>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
    $(document).ready(function () {
     pumpkin_Moving();
    });
    function pumpkin_Moving() {
      $("h1").animate({ marginTop: "120px" }, 1200, "", function () {
        $(this).animate({ marginTop: "90px" }, 1200, "", function () {
          pumpkin_Moving();
        });
      });
    }
    </script>
<body>
     <div id="header">
         <a href="game.jsp"> 🍬 Trick or Treat </a>
         <a href="party.jsp"> 🎉 Party </a>
         <a href="costume.jsp"> 👗 Costume </a>
         <a href="lucky.jsp"> 🤙 Lucky Box </a>
     </div>
     <h1 id="#img_ball">🎃</h1> <br>
     <h3>! HAPPY HALLOWEEN !</h3>
</body>
</html>