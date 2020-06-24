package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	try(PrintWriter out = response.getWriter())
		{
			String username = request.getParameter("userName");
			int rollno = Integer.parseInt(request.getParameter("rollNo"));
			String email = request.getParameter("emailId");
			String pass = request.getParameter("password");
			int hostel = Integer.parseInt(request.getParameter("hostelNo"));
			String course = request.getParameter("course");
			String gender = request.getParameter("gender");
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint","root","");

			Statement statement = con.createStatement();
			int x = statement.executeUpdate("INSERT INTO `register` (`username`, `rollno`, `email`, `password`, `hostelno`, `course`, `gender`) VALUES ('"+username+"', '"+rollno+"', '"+email+"', '"+pass+"', '"+hostel+"', '"+course+"', '"+gender+"');");
			
			if(x!=0)
			{
				response.sendRedirect("studentLogin.jsp");
			}
			else
			{
				System.out.println("Error");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
    }
    	
    	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	//	response.sendRedirect("studentLogin.jsp");
		processRequest(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);
//		
//		try(PrintWriter out = response.getWriter())
//		{
//			String username = request.getParameter("userName");
//			int rollno = Integer.parseInt(request.getParameter("rollNo"));
//			String email = request.getParameter("emailId");
//			String pass = request.getParameter("password");
//			int hostel = Integer.parseInt(request.getParameter("hostelNo"));
//			String course = request.getParameter("course");
//			String gender = request.getParameter("gender");
//			
//			Class.forName("com.mysql.jdbc.Driver");
//			
//			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint","root","");
//
//			Statement statement = con.createStatement();
//			int x = statement.executeUpdate("INSERT INTO `register` (`username`, `rollno`, `email`, `password`, `hostelno`, `course`, `gender`) VALUES ('"+username+"', '"+rollno+"', '"+email+"', '"+pass+"', '"+hostel+"', '"+course+"', '"+gender+"');");
//			
//			if(x!=0)
//			{
//				response.sendRedirect("studentLogin.jsp?s=Registered Successfully..Login Here");
//			}
//			else
//			{
//				System.out.println("Error");
//			}
//			
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//		}
	}

}
