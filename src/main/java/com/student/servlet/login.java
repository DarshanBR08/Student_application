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
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class login extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session=req.getSession(true);
	Student s=null;
	int choice=0;
	StudentDAO stdo=new StudentDAOImpl();
	//PrintWriter out=resp.getWriter();
	s=stdo.getStudent(req.getParameter("email"),req.getParameter("password"));
	if(s!=null) {
		session.setAttribute("student",s);
		RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
		rd.forward(req, resp);
		//out.println("<h1>Login sucess</h1>");
		//out.println("<h2 style=\"color:green;\">welcome "+s.getName()+"</h2>");
	}
	else {
		session.setAttribute("wrongpass","email or password is wrong");
		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
		rd.forward(req, resp);
	}
}
}
