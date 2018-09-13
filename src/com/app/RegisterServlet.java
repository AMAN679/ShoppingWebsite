package com.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	Connection con=null;
	PreparedStatement pstmt;
	
	public void init()throws ServletException
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","root");
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	String name=request.getParameter("name");
	String dob=request.getParameter("dob");
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
     String mob=(request.getParameter("mob"));
     String address=request.getParameter("address");
	try {
		pstmt= (PreparedStatement) con.prepareStatement("insert into userdetail(name,username,password,mobile,dob,address) values(?,?,?,?,?,?)");
		
		pstmt.setString(1, name);
		pstmt.setString(2,email);
		pstmt.setString(3,pass );
		pstmt.setString(4, mob);
		pstmt.setString(5,dob);
	    pstmt.setString(6,address);
		int i=pstmt.executeUpdate();
		if(i==1)
		{
			response.sendRedirect("login.jsp");
			
			
		}
		
		else
		{
			response.sendRedirect("error.html");
		}
		
		
		
		
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		response.sendRedirect("error.html");
	}
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
