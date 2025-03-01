<%@page import="com.student.dto.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.student.dao.StudentDAOImpl"%>
<%@page import="com.student.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>View Details</title>
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
    .main{
    position:absolute;
    top:10%;
      width:100%;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }
    table{
      width:80%;
      text-align: center;
      border:1px solid black;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      backdrop-filter: blur(100px);
           z-index: 1;
           background: linear-gradient(to top,rgb(0,0,0,0.15),rgb(255,255,255,0.15));
    }
    thead{
      color:white;
      background-color: rgb(0,0,0);
    }
    tbody{
    color:black;
    }
   .back{
      position: absolute;
      top: 20px;
      right: 50px; 
    }
    button{
    padding:10px 20px;
		background-color:#ff9900;
		border-radius:10px;
		}
  </style>
</head>
<body>
      <div class="main">
      <%String sucessmsg=(String)session.getAttribute("delete_success");
      if(sucessmsg!=null){%>
      <h3><%=sucessmsg %></h3>
      <%} %>
      
      <%String failmsg=(String)session.getAttribute("delete_fail");
      if(failmsg!=null){%>
      <h3><%=failmsg %></h3>
      <%} %>
        <h1>Student Details</h1>
        
        <table>
          <thead>
            <th>Name</th>
            <th>Phone</th>
            <th>Mail</th>
            <th>Branch</th>
            <th>Location</th>
          </thead>
          <tbody>
          <%StudentDAO stdo=new StudentDAOImpl(); 
         ArrayList<Student>studentList=stdo.getStudent();
         for(Student s:studentList){%>
          <tr>
          <td><%=s.getName()%></td>
          <td><%=s.getPhone()%></td>
          <td><%=s.getMail()%></td>
          <td><%=s.getBranch()%></td>
          <td><%=s.getLoc()%></td>
           <td>
          <form action="delete_student" method="post">
          <input type="hidden" name="id" value="<%=s.getId() %>">
          <button type="submit" class="delete-btn">Delete</button>
          </form>
          </td>
          </tr>
          <%}%>
          </tbody>
        </table>
      </div>
      <div class="back">
      <a href="dashboard.jsp"><button>Back</button></a>
      </div>
</body>
</html>