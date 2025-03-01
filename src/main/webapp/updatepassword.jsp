<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>update password</title>
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
			width:30%;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content:space-between;
			position:absolute;
			top:25%;
			left:35%;
			 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			 border-radius: 20px;
			 backdrop-filter: blur(100px);
           z-index: 1;
           background: linear-gradient(to top,rgb(0,0,0,0.15),rgb(255,255,255,0.15));
		}
		.main div{
			padding:10px;
			width:100%;
			display:flex;
			flex-direction: row;
			justify-content:space-around;
			align-items: center;
		}
		button{
			padding:10px 20px;
		background-color:#ff9900;
		border-radius:10px;
		}
	</style>
</head>
<body>
 <form action="updatepassword" method="post">
  <div class="main">
     	<h1>Update Password</h1>
     	<%String updatefail=(String)session.getAttribute("updatefail");
if(updatefail!=null){%>
<h3><%=updatefail %></h3>
<%} %>

<%String passmissmatch=(String)session.getAttribute("passwordmissmatch");
if(passmissmatch!=null){%>
<h3><%=passmissmatch %></h3>
<%} %>

    <div>
     	<label>New Password</label><input type="password" name="password" required="required">
    </div>
    <div>
     	<label>Confirm password</label><input type="password" name="confirm" required="required">
    </div>
    <div>
     <button type="submit">Submit</button>
     <button><a href="dashboard.jsp">Back</a></button>
    </div>
  </div>
 </form>
</body>
</html>