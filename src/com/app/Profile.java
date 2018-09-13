package com.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Profile
 */
@WebServlet("/profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out=response.getWriter();
		RequestDispatcher rd=request.getRequestDispatcher("header1.jsp");
		rd.include(request, response);
		
		HttpSession session=request.getSession(false);//login user new object will not be created
		String fullname="";
		
	
		if(session!=null)
		{
		
			fullname=(String)session.getAttribute("name");
			out.println("<hr><h2 align='right'>Hello "+fullname);
			 out.print("<center><h1><img src='shop.jpg' id='img0' style=\"width:100px;\"/>Shopping Mall <small>Your comfort is our Goal.</small></h1></center></div>");
			 

			out.println("<marquee  behavior=\"alternate\" height=\"150px\">\r\n" + 
					"                                  <img src=\"shoes1.jpg\" width=\"200px\" height=\"150px\" />\r\n" + 
					"                                 <img src=\"shoes2.jpg\" width=\"200px\" height=\"150px\" />\r\n" + 
					"                                 <img src=\"laptop.jpg\" width=\"200px\" height=\"150px\" />\r\n" + 
					"                                 <img src=\"laptop2.jpg\" width=\"200px\" height=\"150px\" />\r\n" + 
					"                                   <img src=\"book1.jpg\" width=\"200px\" height=\"150px\" />\r\n" + 
					"                                  <img src=\"book2.jpg\" width=\"200px\" height=\"150px\" />\r\n" + 
					"                                  \r\n" + 
					"                                   \r\n" + 
					"                             </marquee>");
		session.setAttribute("name", fullname);
			
		}
		
		else
		{
			
			out.println("<html><body><h1><center>Sorry please login first...</h1>");
			out.println("<img src='sad.gif'></center></body></html>");
		}
		
		RequestDispatcher rd1=request.getRequestDispatcher("footer.jsp");
		rd1.include(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
