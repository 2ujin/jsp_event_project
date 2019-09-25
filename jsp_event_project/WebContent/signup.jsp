<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>회원가입 | 제주항공</title>
</head>
 <script>
function send(){
  document.form.action='main.php';
  document.form.submit();
  document.form.action='signup_db.php';
}
</script>
 <style>
   @import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
   body{
     overflow-y: hidden;
     overflow-x: hidden;
     background-color: #F0F0F0;
     text-align: center;
     margin-top: 40px;
   }
  .login{
    width: 400px;
    height: 500px;
    background-color: white;
    border-radius: 80px;
    text-align: center;
    margin: auto;
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
  h4{
    margin-top: 20px;
  }
 </style>
 <body>
   <div class="out">
     <img src="https://www.jejuair.net/jejuair/images/simp_member/hlogo.png" class="face"><br><br>
     <form method="get" name="form" class="login" action="#">
       <br><br><br><h4>회 원 가 입</h4>
       <input type="text" class="input" placeholder=" 아이디" name="id"><br>
       <input type="text" class="input" placeholder=" 비밀번호" name="pw"><br>
       <input type="text" class="input" placeholder=" 이름" name="id"><br>
       <input type="text" class="input" placeholder=" 이메일" name="pw"><br>
       <input type="text" class="input" placeholder=" 전화번호" name="id"><br><br>
       <input type="submit" class="btn1" value="회원가입" onclick="send()"><br>
     </form>
   </div>
</body>
</html>