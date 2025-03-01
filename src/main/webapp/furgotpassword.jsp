<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot password</title>
</head>
<body>
<style>
		body{
			padding:0px;
			margin:0px;
			font-family: 'Poppins', sans-serif;
      background-image:url("school.jpg");
      width:100%;
      height:100vh;
      background-size: cover;
		}
		.main{
			position:absolute;
			top:10%;
			left:35%;
			width:30%;
			display:flex;
			flex-direction: column;
			align-items: center;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			border-radius:10px;
			backdrop-filter: blur(100px);
           z-index: 1;
           background: linear-gradient(to top,rgb(0,0,0,0.15),rgb(255,255,255,0.15));
		}
		.mainchild{
			padding:10px;
		}
		.middle{
			display:flex;
			flex-direction:column;
			align-items:center;
		}
		input{
		background:none;
			padding:10px;
			margin:10px;
			border:none;
			border-bottom: 2px solid black;
		}
	</style>
</head>
<body>
<form action="forgotpassword" method="post">
	<div class="main">
		<div class="mainchild top">
			<center><h1>Pentagon</h1></center>
			<center><p>Forgot Password</p></center>
		</div>
		<div class="mainchild middle">
			Enter Email<input type="text" name="email">
			Enter Phonenumber<input type="tel" name="phone">
			Enter New Password<input type="password" name="password">
			Confirm Password<input type="password" name="conpassword">
		</div>
		<div class="mainchild bottom">
			<center><button type="submit">Submit</button></center>
			<br>
			<center><button><a href="login.jsp">Back</a></button></center>
		</div>
	</div>
</form>
</body>
</html>