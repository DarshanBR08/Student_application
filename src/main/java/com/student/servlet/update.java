package com.student.servlet;

import java.io.IOException;

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
@WebServlet("/update_profile")
public class update extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session=req.getSession(false);
	Student s=(Student)session.getAttribute("student");
	StudentDAO stdo=new StudentDAOImpl();
	s.setName(req.getParameter("name"));
	s.setPhone(Long.parseLong(req.getParameter("phone")));
	s.setMail(req.getParameter("mail"));
	s.setBranch(req.getParameter("branch"));
	s.setLoc(req.getParameter("location"));
	if(stdo.updateStudent(s)) {
		session.setAttribute("sucess","Profile Updated sucessfully");
		RequestDispatcher rd=req.getRequestDispatcher("updateprofile.jsp");
		rd.forward(req, resp);
	}
	else {
		session.setAttribute("fail","Failed to update");
		RequestDispatcher rd=req.getRequestDispatcher("updateprofile.jsp");
		rd.forward(req, resp);
	}
}
}
