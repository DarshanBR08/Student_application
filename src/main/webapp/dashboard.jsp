<%@page import="com.student.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Discription</title>
	<style>
		body{
			font-family: sans-serif;
			margin: 0px;
			padding:0px;
			background-image:url("school.jpg");
            width:100%;
            height:100vh;
            background-size: cover;
            color:white;
		}
		nav{
			width:100%;
			backdrop-filter: blur(100px);
           z-index: 1;
           background: linear-gradient(to top,rgb(0,0,0,0.15),rgb(255,255,255,0.15));
			display: flex;
			justify-content: space-between;
		}
       .navchild{
       	margin-left:10px;
       	width:50%;
       	display:flex;
       	justify-content: space-between;
       	align-items: center;
       }
       button{
       	background-color: darkred;
       	padding:10px;
       	margin: 10px;
       	height:35px;
       	border-radius:10%;
       }
       button a{
       text-decoration:none;
       }
       .dashboard{
       	width:100%;
       	display: flex;
       	flex-direction: column;
       align-items: center;
       }
       table{
       text-align:left;
       	width:80%;
       }
       a{
		color:#ff9900;
		}
	</style>
</head>
<body>
	<%Student s=(Student)session.getAttribute("student");
	   if(s!=null){%>
	
<nav>
	<div class="navchild"><h1>Welcome - <%=s.getName()%></h1></div>
	<div class="navchild">
		<h4><a href="updateprofile.jsp">Update Profile</a></h4>
		<% if(s.getId()==1) { %>
		<h4><a href="studentdetails.jsp">Student Details</a></h4>
		<%}%>
		<h4><a href="updatepassword.jsp">Update Password</h4>
		<h4></h4>
		<button ><a href="logout">LOGOUT</a></button>
	</div>
</nav>

<div class="dashboard">
<h1>Dashboard</h1>
<%String updatesuccess=(String)session.getAttribute("updatesucess");
if(updatesuccess!=null){%>
<%=updatesuccess %>
<%} %>
<table>
	<caption><h3>Your profile<h3></caption>
	<tr><th>ID</th><th>Name</th><th>Phone</th><th>Mail-Id</th><th>Branch</th><th>Location</th></tr>
	<tr><td><%=s.getId() %></td>
	<td><%=s.getName()%></td>
	<td><%=s.getPhone() %></td>
	<td><%=s.getMail() %></td>
	<td><%=s.getBranch() %></td>
	<td><%=s.getLoc() %></td>
	</tr>
</table>
</div>
<%} %>
</body>
</html>