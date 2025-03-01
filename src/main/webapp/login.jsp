<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
	<style>
		body{
			padding:0px;
			margin:0px;
			background-image:url("school.jpg");
            width:100%;
            height:100vh;
            background-size: cover;
		}
		.main{
			position:absolute;
			top:20%;
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
		button{
		padding:10px 20px;
		background-color:#ff9900;
		border-radius:10px;
		}
		a{
		color:#ff9900;
		}
	</style>
</head>
<body>
<form action="login" method="post">
	<div class="main">
		<div class="mainchild top">
			<center><h1>Pentagon</h1></center>
			<center><p>Login Page</p></center>
			<%String sucessMessage=(String)request.getAttribute("sucess");
			if(sucessMessage!=null){%>
			<%=sucessMessage %>
			<%} %>
			<%String wrongcred=(String)session.getAttribute("wrongpass");
			if(wrongcred!=null){%>
			<%=wrongcred %>
			<%} %>
		</div>
		<div class="mainchild middle">
			Enter Email<input type="text" name="email">
			Enter Password<input type="password" name="password">
			<a href="furgotpassword.jsp">Forgot Password</a>
		</div>
		<div class="mainchild bottom">
			<center><button type="submit"  value="LogIn">LogIn</button></center>
			<p>New User <a href="signup.jsp">Create account</a></p>
		</div>
	</div>
</form>
</body>
</html>