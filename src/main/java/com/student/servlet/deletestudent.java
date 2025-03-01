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
@WebServlet("/delete_student")
public class deletestudent extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(false);
		StudentDAO stdo=new StudentDAOImpl();
		Student s=new Student();
		s.setId(Integer.parseInt(req.getParameter("id")));
		if(stdo.deleteStudent(s)) {
			session.setAttribute("delete_success","Student Details get Deleted");
			RequestDispatcher rd=req.getRequestDispatcher("studentdetails.jsp");
			rd.forward(req,resp);
		}
		else {
			session.setAttribute("delete_fail","Failed to Delete Student details");
			RequestDispatcher rd=req.getRequestDispatcher("studentdetails.jsp");
			rd.forward(req,resp);
		}
	}

}
