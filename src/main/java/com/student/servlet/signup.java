package com.student.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.student.dao.StudentDAO;
import com.student.dao.StudentDAOImpl;
import com.student.dto.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class signup extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	Student s=new Student();
	StudentDAO sdao=new StudentDAOImpl();
	PrintWriter out=resp.getWriter();
	s.setName(req.getParameter("name"));
	s.setPhone(Long.parseLong(req.getParameter("phone")));
	s.setMail(req.getParameter("mail"));
	s.setBranch(req.getParameter("branch"));
	s.setLoc(req.getParameter("location"));
	if(req.getParameter("password").equals(req.getParameter("conpassword"))) {
		s.setPassword(req.getParameter("conpassword"));
		
		if(sdao.insertStudent(s)) {
			//out.println("<h1>Data saved successfully</h1>");
			req.setAttribute("sucess", "Signup Sucess");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
		else {
			//out.println("<h1>failed to save data</h1>");
			req.setAttribute("fail", "Failed to signup");
			RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
			rd.forward(req,resp);
		}
	}
	else {
		req.setAttribute("passerror", "Password Missmatch");
		RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
		rd.forward(req,resp);
	}
	
	
}
}
