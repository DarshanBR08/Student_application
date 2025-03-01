<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body{
      padding:0px;
      margin: 0px;
      font-family: 'Poppins', sans-serif;
      background-image:url("school.jpg");
      width:100%;
      height:100vh;
      background-size: cover;
    }
    .main{
           display: flex;
           flex-direction: column;
           border-radius: 10px;
           width:500px;
           box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
           position:absolute;
           top:10%;
           left:30%;
           align-items: center;
           backdrop-filter: blur(100px);
           z-index: 1;
           background: linear-gradient(to top,rgb(0,0,0,0.15),rgb(255,255,255,0.15));
    }
    .maingrandchild{
      margin:20px;
      width:100%;
      display: flex;
      justify-content: space-between;
    }
    .top{
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      align-items: center;
    }
    .bottom{
      display:flex;
      align-items: center;
    }
    .maingrandchild input{
      background-color:transparent;
      border-top: none;
      border-right: none;
      border-left: none;
    }
    input[type="submit"]{
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
<form action="signup" method="post">
<div class="main">
  <div class="mainchild top"> 
    <h3>Sign Up</h3>
    <p>Enter Your Details</p>
    <% String FailedMessage=(String)request.getAttribute("fail"); 
    if(FailedMessage!=null){%>
    <%=FailedMessage %>
    <%}%>
     <% String errormsg=(String)request.getAttribute("passerror"); 
    if(errormsg!=null){%>
    <%=errormsg %>
    <%}%>
  </div>
    <div class="mainchild middle">
      
       <div class="maingrandchild g1">
      <label>Enter your Name</label><input type="text" name="name" required="required">
       </div>
        <div class="maingrandchild g2">
      <label>Enter your Phone number</label><input type="tel" name="phone" required="required">
       </div>
        <div class="maingrandchild g3">
      <label>Enter your Email</label><input type="email" name="mail" required="required">
       </div>
        <div class="maingrandchild g4">
      <label>Enter your Branch</label><input type="text" name="branch" required="required">
       </div>
        <div class="maingrandchild g5">
      <label>Enter your Location</label><input type="text" name="location" required="required">
       </div>
        <div class="maingrandchild g6">
      <label>Enter Password</label><input type="password" name="password" required="required">
       </div>
        <div class="maingrandchild g7">
      <label>Confirm Password</label><input type="password" name="conpassword" required="required">
       </div>
    </div>
    <div class="mainchild bottom">
      <input type="submit" name="SignUp" value="submit">
      <p>already have a account? <a href="login.jsp">Login</a>
    </div>
</div>
</form>
</body>
</html>