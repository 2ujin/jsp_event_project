<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>🍬 Trick or Treat</title>
  </head>
  <style>
    @import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
  body{
    background-color: #e65119;
    overflow-y: hidden;
    overflow-x: hidden;
  }
  img{
    width: 100px;
  }
  #img{
    width: 120px;
  }
  #img1, #yourChoiceImg, #computerChoiceImg{
    width: 130px;
  }
  form{
    text-align: center;
    margin-top: 60px;
  }
  #inputYourChoice{
    margin-left: 50px;
  }
  #btn{
    margin-top: 40px;
    background-color: #e3f2fd;
    border: none;
    width: 80px;
    height: 25px;
    border-radius: 80px;
    font-family: 'NanumSquare';
  }
  #candy{
    text-align: center;
    margin-top: 130px;
    font-size: 30px;
    /* float: left; */
  }
  #resultImg{
    line-height: 1020px;
  }
  #form{
    text-align: center;
    background-color: white;
    width: 900px;
    height: 300px;
    margin-left: 520px;
    padding: 10px;
  }
  #h2{
    font-family: 'NanumSquare';
    text-align: center;
    margin-top: 40px;
  }
  h2{
    font-family: 'NanumSquare';
  }
  </style>
</head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script>
      var countt = 0;
		///// 가위 0 바위 1 보 2
			function computerChoice(){
				var computerChoice = Math.floor(Math.random()*3)
				return computerChoice;
			}
			function yourChoice(){
        // var yourChoice = $('#inputYourChoice').val();
        var radioVal = $('input[name="chk_info"]:checked').val();
				if(radioVal=='가위')
					return 0;
				else if(radioVal=='바위')
					return 1;
				else if(radioVal=='보')
					return 2;
				else
					alert('가위, 바위, 보 셋중 하나를 입력하시오\n다시 입력하시오')
			}
      var count = 0;
			function checkwhowin(user, com){
				//0 승리 1 패배 2 드로우
				var userResult = 0;
				if((user==1&&com==0) || (user==2&&com==1) || (user==0&&com==2)){
          count++;
            $("#candy").append("🍬");
            if(count == 5){
              alert("5개 됨"); //이러면 성공 게임결과 페이지
              location.href = "game_result.jsp?result="+"success";
            }
					return 0;
        }
				else if((user==2&&com==0) || (user==0&&com==1) || (user==1&&com==2))
					return 1;
				else if((user==0&&com==0) || (user==1&&com==1) || (user==2&&com==2))
					return 2;
				else
					alert('승패 오류');
			}
			function showimage(user, rusult, com){
				if(user==0)
					$('#yourChoiceImg').attr('src', 'https://cdn.shopify.com/s/files/1/1061/1924/products/Victory_Hand_Emoji_Icon_ios10_large.png?v=1542436006');
				else if(user==1)
					$('#yourChoiceImg').attr('src', 'https://cdn.shopify.com/s/files/1/1061/1924/products/Raised_Fist_Emoji_Icon_ios10_large.png?v=1542436023');
				else if(user==2)
					$('#yourChoiceImg').attr('src', 'https://cdn.shopify.com/s/files/1/1061/1924/products/Raised_Hand_With_Fingers_Splayed_Emoji_Icon_ios10_large.png?v=1542436022');
				if(rusult==0)
					$('#resultImg').attr('src', 'img/win.png');
				else if(rusult==1)
					$('#resultImg').attr('src', 'img/lose.png');
				else if(rusult==2)
					$('#resultImg').attr('src', 'img/draw.png');
				if(com==0)
					$('#computerChoiceImg').attr('src', 'https://cdn.shopify.com/s/files/1/1061/1924/products/Victory_Hand_Emoji_Icon_ios10_large.png?v=1542436006');
				else if(com==1)
					$('#computerChoiceImg').attr('src', 'https://cdn.shopify.com/s/files/1/1061/1924/products/Raised_Fist_Emoji_Icon_ios10_large.png?v=1542436023');
				else if(com==2)
					$('#computerChoiceImg').attr('src', 'https://cdn.shopify.com/s/files/1/1061/1924/products/Raised_Hand_With_Fingers_Splayed_Emoji_Icon_ios10_large.png?v=1542436022');
        countt++;
        if(countt == 15){
          alert("10번넘게 됐지롱ㅇ"); // 이러면 실패
          location.href = "game_result.jsp?result="+"fail";
        }
      }
			function startgame(){
				var comChoice = computerChoice();
				var youChoice = yourChoice();
				var result = checkwhowin(youChoice, comChoice);
				showimage(youChoice, result, comChoice);
			}
		</script>
	<body>
    <h2 id="h2">🍬 Trick or Treat</h2>
    <div id="candy">&nbsp;</div>
		<form>
      <input type="radio" name="chk_info"  id="inputYourChoice" value="가위"><img src="https://cdn.shopify.com/s/files/1/1061/1924/products/Victory_Hand_Emoji_Icon_ios10_large.png?v=1542436006" id="img2">
      <input type="radio" name="chk_info"  id="inputYourChoice" value="바위"><img src="https://cdn.shopify.com/s/files/1/1061/1924/products/Raised_Fist_Emoji_Icon_ios10_large.png?v=1542436023" id="img">
      <input type="radio" name="chk_info"  id="inputYourChoice" value="보"><img src="https://cdn.shopify.com/s/files/1/1061/1924/products/Raised_Hand_With_Fingers_Splayed_Emoji_Icon_ios10_large.png?v=1542436022" id="img1"><br>
      <input type="button" value="👊 도 전" onclick="startgame()" id="btn"/>
		</form>
    <form id="form">
      <h2> ✌✊✋가위바위보게임 하고 🍬받자! </h2><br>
		  <img src="" id="yourChoiceImg"/>
		  <img src="" id="resultImg"/>
		  <img src="" id="computerChoiceImg"/>
   </form>
	</body>
</html>