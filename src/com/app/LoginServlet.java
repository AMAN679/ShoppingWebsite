package com.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	Connection con=null;
	PreparedStatement pstmt;
	ResultSet rs=null;
	
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
	
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		//RequestDispatcher rd=request.getRequestDispatcher("link.html");
		//RequestDispatcher rd1=request.getRequestDispatcher("profile");
		//rd.include(request, response);
		try {
		 	pstmt=(PreparedStatement) con.prepareStatement("select * from userdetail where username=? and password=?");
		    pstmt.setString(1, email);
		    pstmt.setString(2, pass);
		    rs=pstmt.executeQuery();
		    

		    
		    String fullname="";  
		  
		    boolean b=rs.next();
		    if(b)
		    {
		    	
		    	
		    	
		    	HttpSession session=request.getSession(false);
		    	if(session.getAttribute("name")!=null)

		    	{
		    		RequestDispatcher rd2=request.getRequestDispatcher("index.jsp");
		    		rd2.forward(request, response);
		    	}
		   
		    		 
				     
				      
		    fullname=rs.getString(2);	
		    session=request.getSession();
		    
		    
		 
		    
		    
		    
		    	session.setAttribute("name",fullname);
		    	//rd1.forward(request, response);
		    	response.sendRedirect("profile");
		    	}
		    
		    else
		    {
		    	//response.sendRedirect("register.html");
		    	  PrintWriter out=response.getWriter();
		    	RequestDispatcher rd2=request.getRequestDispatcher("header.jsp");
		    	rd2.include(request, response);
		      out.println("<html><body><center><h1 text='red'>");
		      out.println("Sorry your Email or Password is invalid....");
		      out.println("<a href='index.jsp'>Click Here</a></h1>"
		      		+ "<br><img src='sad.gif'/></center></body></html>");
		     
		      RequestDispatcher rd3=request.getRequestDispatcher("footer.jsp");
		    	rd3.include(request, response);
		    }
		    
		   
		    
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("error.html");
		}
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
