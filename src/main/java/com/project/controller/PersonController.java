package com.project.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.project.beans.booking;
import com.project.beans.contact;
import com.project.beans.person;
import com.project.dao.SqlQueries;

/**
 * Servlet implementation class PersonController
 */
@WebServlet("/PersonController")
public class PersonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter ps=response.getWriter();
		String person=request.getParameter("person");
		
		if(person.equals("register"))
		{
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String gender=request.getParameter("gender");
			
			person ob=new person();
			ob.setName(name);
			ob.setEmail(email);
			ob.setPassword(password);
			ob.setGender(gender);
			
			try {
				int status=SqlQueries.isRegister(ob);
				
				if(status!=0)
				{
					ps.write("<script>alert('Registration successFully...');window.location.replace('Register.jsp');</script>");
				}
				else
				{
					ps.write("<script>alert('Registration Failed...!!');window.location.replace('Register.jsp');</script>");
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(person.equals("login"))
		{
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			
			try {
				if(SqlQueries.islogin(email, password))
				{
					ps.write("<script>alert('login successFully...');window.location.replace('home.jsp');</script>");
					
				}
				else
				{
					ps.write("<script>alert('Login Failed...!!');window.location.replace('login.jsp');</script>");
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

		}
		else if(person.equals("book"))
		{
			String name=request.getParameter("name");
			String cdate=request.getParameter("cdate");
			String odate=request.getParameter("odate");
			String room=request.getParameter("room");
			String status=request.getParameter("status");
			String payment=request.getParameter("payment");
			
			booking ob=new booking();
			ob.setName(name);
			ob.setCdate(cdate);
			ob.setOddate(odate);
			ob.setRoom(room);
			ob.setStatus(status);
			ob.setPayment(payment);
			if(request.getParameter("room").equals("deluxe")) {
            ob.setTotal("10000");
			}else if(request.getParameter("room").equals("standard")) {
	            ob.setTotal("8000");

			}else if(request.getParameter("room").equals("family")) {
	            ob.setTotal("7000");
			}
			
			try {
				int status1=SqlQueries.isbooked(ob);
				
				if(status1!=0)
				{
					ps.write("<script>alert('congrats BookedSuccesfully...');window.location.replace('booking.jsp');</script>");
				}
				else
				{
					ps.write("<script>alert('sorry failed booking');window.location.replace('booking.jsp');</script>");
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(person.equals("delete"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			
			
			
			try {
				int status=SqlQueries.isDelete(id);
				if(status!=0)
				{
					ps.write("<script>alert('Data delted');window.location.replace('home.jsp');</script>");

				}
				else
				{
					ps.write("<script>alert('data not deleted');window.location.replace('home.jsp');</script>");

				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(person.equals("update"))
		{
			
			int id=Integer.parseInt(request.getParameter("id"));
			String name=request.getParameter("name");
			String cdate=request.getParameter("cdate");
			String odate=request.getParameter("odate");
			String room=request.getParameter("room");
			String status=request.getParameter("status");
			String payment=request.getParameter("payment");
			String total=request.getParameter("total");
			
			booking ob=new booking();
			ob.setId(id);
			ob.setName(name);
			ob.setCdate(cdate);
			ob.setOddate(odate);
			ob.setRoom(room);
			ob.setStatus(status);
			ob.setPayment(payment);
			ob.setTotal(total);
			try {
				int status1=SqlQueries.isUpdate(ob);
				
				if(status1!=0)
				{
					ps.write("<script>alert('data update successfully');window.location.replace('home.jsp');</script>");

				}
				else
				{
					ps.write("<script>alert('data not update');window.location.replace('home.jsp');</script>");

				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

		}
		else if(person.equals("fetch"))
		{
			RequestDispatcher rs=request.getRequestDispatcher("home.jsp");
			rs.forward(request, response);
			
		}
		else if(person.equals("contact"))
		{
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String message=request.getParameter("message");

			
			contact ob=new contact();
			ob.setName(name);
			ob.setEmail(email);
			ob.setMessage(message);
			try {
				int status=SqlQueries.iscontat(ob);
				if(status!=0)
				{
					ps.write("<script>alert('messegae sent succesfully..');window.location.replace('contact.jsp');</script>");

				}
				else
				{
					ps.write("<script>alert('messegae not sent succesfully..');window.location.replace('contact.jsp');</script>");

				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
