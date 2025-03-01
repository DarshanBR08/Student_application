<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="Header.jsp" %>
<% Date d=new Date(); %>
<h1><%= d %></h1>
<%Random r=new Random(); %>
<h2>Random value=<%= r.nextInt()%></h2>
</body>
</html>