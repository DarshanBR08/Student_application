package com.student.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.student.connector.Connector;
import com.student.dto.Student;

public class StudentDAOImpl implements StudentDAO {
		private Connection con;
		
		public StudentDAOImpl()
		{
			this.con=Connector.requestConnection();
		}
		//Here, we will be writing all the JDBC logics

		@Override
		public boolean insertStudent(Student s) {
			String query="insert into student values(0,?,?,?,?,?,?,sysdate())";
			int i=0;
			try {
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, s.getName());
				ps.setLong(2, s.getPhone());
				ps.setString(3, s.getMail());
				ps.setString(4, s.getBranch());
				ps.setString(5, s.getLoc());
				ps.setString(6, s.getPassword());
				i=ps.executeUpdate();
			}catch (SQLException e) {
				e.printStackTrace();
				
			}
			
			if(i>0) {
				return true;
			}
			else {
				return false;
				
			}
			
		}

		@Override
		public boolean updateStudent(Student s) {
			String query="update student set name=? ,phone=?, mail=?, branch=?, location=?, password=? where id=?";
			int i=0;
			try {
				
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1,s.getName());
				ps.setLong(2,s.getPhone());
				ps.setString(3,s.getMail());
				ps.setString(4,s.getBranch());
				ps.setString(5,s.getLoc());
				ps.setString(6,s.getPassword());
				ps.setInt(7,s.getId());
				i=ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				
				e.printStackTrace();
			}
			if(i>0) {
				return true;
			}
			else {
				return false;
			}
			
		}

		@Override
		public boolean deleteStudent(Student s) {
			// TODO Auto-generated method stub
			String query="delete from student where id=?";
			int i=0;
			try {
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, s.getId());
				i=ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(i>0) {
				return true;
			}
			else {
				return false;
			}
			
		}

		@Override
		public Student getStudent(String mail, String Password) {
			// TODO Auto-generated method stub
			Student s=null;
			String query="select * from student where mail=? and password=?";
			try {
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString (1,mail);
				ps.setString (2,Password);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					s=new Student();
					s.setId(rs.getInt("ID"));
					s.setName(rs.getString("NAME"));
					s.setPhone(rs.getLong("PHONE"));
					s.setMail(rs.getString("Mail"));
					s.setBranch(rs.getString("Branch"));
					s.setLoc(rs.getString("LOCATION"));
					s.setPassword(rs.getString("PASSWORD"));
					s.setDate(rs.getString("DATE"));
					
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return s;
		}

		@Override
		public Student getStudent(long phone, String mail) {
			Student s=null;
			String query="select * from student where phone=? and mail=?";
			try {
				PreparedStatement ps=con.prepareStatement(query);
				ps.setLong(1, phone);
				ps.setString(2, mail);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					s=new Student();
					s.setId(rs.getInt("ID"));
					s.setName(rs.getString("NAME"));
					s.setPhone(rs.getLong("PHONE"));
					s.setMail(rs.getString("Mail"));
					s.setBranch(rs.getString("Branch"));
					s.setLoc(rs.getString("LOCATION"));
					s.setPassword(rs.getString("PASSWORD"));
					s.setDate(rs.getString("DATE"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return s;
		}

		@Override
		public ArrayList<Student> getStudent() {
			// TODO Auto-generated method stub
			Student s=null;
			ArrayList<Student> studentList=new ArrayList<>();
			String query="select * from student where id!=1";
			try {
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					s=new Student();
					s.setId(rs.getInt("ID"));
					s.setName(rs.getString("NAME"));
					s.setPhone(rs.getLong("PHONE"));
					s.setMail(rs.getString("Mail"));
					s.setBranch(rs.getString("Branch"));
					s.setLoc(rs.getString("LOCATION"));
					s.setPassword(rs.getString("PASSWORD"));
					s.setDate(rs.getString("DATE"));
					studentList.add(s);				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return studentList;
		}

		@Override
		public Student getStudent(String name) {
			// TODO Auto-generated method stub
			return null;
		}

	}