<%@page import="javax.xml.ws.Response"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<script>


</script>


<style>

.nav nav-pills {
    position: -webkit-sticky; /* Safari */
    position: sticky;
    top: 0;
}
a{
color:white;
}
</style>

</head>
<body>
<%!String name=""; %>
<%HttpSession session1=request.getSession(false);

name=(String)session1.getAttribute("name");
%>
<nav class="navbar navbar-inverse">
 
<ul class="nav nav-pills">
  <li role="presentation"><a href="shoes.jsp?name=">Shoes</a></li>
   
 
  <li role="presentation"><a href="book.jsp">Books</a></li>
  
  <li role="presentation"><a href="laptop.jsp">Laptop</a></li>
  
 
  
  <li role="presentation"><a href="logout.jsp">Logout</a></li>
   
</ul>
 
</nav>
</body>
</html>