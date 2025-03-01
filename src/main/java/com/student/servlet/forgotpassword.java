package com.student.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.student.dao.StudentDAO;
import com.student.dao.StudentDAOImpl;
import com.student.dto.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/forgotpassword")
public class forgotpassword extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	StudentDAO stdo=new StudentDAOImpl();
	PrintWriter out=resp.getWriter();
	Student s=stdo.getStudent(Long.parseLong(req.getParameter("phone")),req.getParameter("email"));
	if(s!=null) {
		if(req.getParameter("password").equals(req.getParameter("conpassword"))) {
			s.setPassword(req.getParameter("conpassword"));
			if(stdo.updateStudent(s)) {
			out.println("<h1>Password sucessfully updated</h1>");
			}
			else {
				out.println("<h1>Failed to Update password</h1>");
			}
		}
		else {
			out.println("<h1>Password missmatch</h1>");
		}
	}
	else {
		out.println("<h1>User not fount</h1>");
	}
}
}
