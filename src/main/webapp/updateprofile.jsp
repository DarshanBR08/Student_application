<%@page import="com.student.dto.Student"%>
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
    .mainchild{
    	padding:10px;
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
		button{
		padding:10px 20px;
		background-color:#ff9900;
		border-radius:10px;
		}
  </style>
</head>
<body>
<form action="update_profile" method="post">
<div class="main">
  <div class="mainchild top"> 
    <h3>Update Profile</h3>
    <p>Enter Your Details</p>
    <%Student user=(Student)session.getAttribute("student");
    if(user!=null){%>
    <% String sucessmsg=(String)session.getAttribute("sucess"); 
    if(sucessmsg!=null){%>
    <%=sucessmsg %>
    <%}%>
     <% String failmsg=(String)session.getAttribute("fail"); 
    if(failmsg!=null){%>
    <%=failmsg %>
    <%}%>
    
  </div>
    <div class="mainchild middle">
      
       <div class="maingrandchild g1">
      <label>Name</label><input type="text" name="name" value="<%=user.getName()%>">
       </div>
        <div class="maingrandchild g2">
      <label>Phone number</label><input type="tel" name="phone" value="<%=user.getPhone()%>">
       </div>
        <div class="maingrandchild g3">
      <label>Email</label><input type="email" name="mail" value="<%=user.getMail()%>">
       </div>
        <div class="maingrandchild g4">
      <label>Branch</label><input type="text" name="branch" value="<%=user.getBranch()%>">
       </div>
        <div class="maingrandchild g5">
      <label>Location</label><input type="text" name="location" value="<%=user.getLoc()%>">
       </div>
    </div>
    <div class="mainchild bottom">
      <input type="submit" name="Update" value="submit">
      <button><a href="dashboard.jsp">Back</a></button>
    </div>
    <%} %>
</div>
</form>
</body>
</html>