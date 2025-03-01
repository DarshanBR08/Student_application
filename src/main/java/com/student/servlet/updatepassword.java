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
@WebServlet("/updatepassword")
public class updatepassword extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(false);
		StudentDAO stdo=new StudentDAOImpl();
		Student s=(Student)session.getAttribute("student");
		if(req.getParameter("password").equals(req.getParameter("confirm"))) {
			s.setPassword(req.getParameter("confirm"));
			if(stdo.updateStudent(s)) {
				session.setAttribute("updatesucess", "Password Updated Sucessfully");
				RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
				rd.forward(req,resp);
			}
			else {
				session.setAttribute("updatefail", "Failed to Update");
				RequestDispatcher rd=req.getRequestDispatcher("updatepassword.jsp");
				rd.forward(req,resp);
			}
		}
		else {
			session.setAttribute("passwordmissmatch", " Password missmatch!.. Try again");
			RequestDispatcher rd=req.getRequestDispatcher("updatepassword.jsp");
			rd.forward(req,resp);
		}
	}

}
