<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<style>
table{
width:550px;
margin-left:320px;

}

#footer{
background-color:#e2cb16;
}

</style>

</head>

<%RequestDispatcher rd=request.getRequestDispatcher("header1.jsp");
rd.include(request, response);%>

<body>


<%! Connection con=null;
PreparedStatement pstmt;
ResultSet rs=null;%>


<%try {
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","root");
	
		
}
catch(Exception e)
{
	e.printStackTrace();
}



try {
 	pstmt=(PreparedStatement) con.prepareStatement("select * from product where pname=?");
    pstmt.setString(1,pname);
    
    rs=pstmt.executeQuery();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

<% while(rs.next()){ %>
<center>
<table>
<caption><h2 style="color:blue;">Poduct Details</h2><hr></caption>

<tr>
<b><td><h2>Type:</h2></td></b><td><h2><%= rs.getString(2) %></h2></td><br>

</tr>
<tr>
<b><td><h2>Model:</td></b><td><h2><%= rs.getString(3) %></h2></td><br>
</tr>
<tr>
<b><td><h2>Brand:</h2></td></b><td><h2><%= rs.getString(4) %></h2></td><br>
</tr>
<tr>
<b><td><h2>Price:</h2></td></b><td><h2><%= rs.getString(5) %></h2></td><br>
</tr>
<tr>
<b><td><h2>Description:</h2></td></b><td><h2><%= rs.getString(6) %></h2></td><br>
</tr>
<tr>
<b><td><h2>Product Name:</h2></td></b><td><h2><%= rs.getString(7) %></h2></td><br>
</tr>
</h3>

<tr>
</tr>

</table><br><br>
<p><a href="#" class="btn btn-primary" role="button">Pay Bill</a>  <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
    <hr><hr>
</center>
 

<%} %>



</body>
<div  id="footer">
<center>
<H3>shpopping mall, Bhbaneswar, 7488230158   &nbsp;&nbsp;&copy;2018 All rights reserved</H3>
</div>
</html>