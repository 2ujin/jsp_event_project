<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>로그인 | 제주항공</title>
</head>
 <style>
   @import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
   body{
     overflow-y: hidden;
     overflow-x: hidden;
     background-color: #F0F0F0;
     text-align: center;
     margin-top: 90px;
   }
  .login{
    width: 400px;
    height: 300px;
    background-color: white;
    border-radius: 80px;
    position:absolute;
    left: 438px;
    top: 170px;
    text-align: center;
  }
  .btn1{
   background-color: orange;
   border: none;
   width: 190px;
   height: 30px;
   border-radius: 80px;
  }
  code{
    font-size: 10px;
  }
  a{
    text-decoration: none;
    color: black;
  }
  .input{
    width:190px;
    height: 25px;
    margin: 7px;
    border-radius: 10px;
    border: none;
    border:solid 1px #ccc;
  }
  .face{
    width: 13%;
    margin-top: 15px;
    margin-bottom: 10px;
  }
 </style>
 <body>
   <div class="out">
    <img src="https://www.jejuair.net/jejuair/images/simp_member/hlogo.png" class="face"><br><br>
     <form class="login" method="get" action="login_check.php">
       <br><br><br><input type="text" class="input" placeholder=" 아이디" name="id"><br>
       <input type="text" class="input" placeholder=" 비밀번호" name="pw"><br><br>
       <input type="submit" class="btn1" value="Login"><br>
       <code><a href="http://naver.com">아이디/비밀번호 찾기</a>     |     <a href="signup.php">회원가입</a> <code>
     </form>
   </div>
</body>
</html>