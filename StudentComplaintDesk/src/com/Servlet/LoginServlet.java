package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    		response.setContentType("text/html;charset=UTF-8");
    		try(PrintWriter out = response.getWriter())
    		{
    			String username = request.getParameter("username");
    			String pass = request.getParameter("password");
    			
    			Class.forName("com.mysql.jdbc.Driver");
    			
    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint","root","");
    	
    			Statement statement = con.createStatement();
    			ResultSet x =  statement.executeQuery("select * from `register` where `username`= '"+username+"'  and password = '"+pass+"'");
    			 			
    			if( x.next() )
    			{
    				HttpSession session = request.getSession();
    				session.setAttribute("uname", username);
    				
    				response.sendRedirect("StudentComplain.jsp");
    			    				
    			}
    			else
    			{

    				response.sendRedirect("studentLogin.jsp");
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
		processRequest(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);

	}

}
