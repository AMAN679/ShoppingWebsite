<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<style>
#footer{
background-color:#e2cb16;
}

.thumbnail{
width:320px;
height:320px;
}
a{
color:white;
}
</style>
</head>

<% RequestDispatcher rd=request.getRequestDispatcher("header1.jsp");
rd.include(request,response);
%>

<%HttpSession session1=request.getSession(false); %>


<body>
<%if((session1!=null)){ %>
<%= "hello="+request.getParameter("name") %>
<%} %>
<div class="container">
  <h2 align="center">Shoes Corner</h2>
  <br>
  
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
       
          <img src="adidasx1.jpg" alt="Lights" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>Adidas X1</h3>
        <p>Sneakers for men</p>
        <p><a href="disp.jsp?pname=Adidas X1" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
        
        
        
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        
          <img src="nike2.jpg" alt="Nature" style="width:170px;height:150px;" />
           <div class="caption">
        <h3>Nike 2</h3>
        <p>sport shoes</p>
         <p><a href="disp.jsp?pname=Nike 2" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
       
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        
          <img src="nikeair.jpg" alt="Fjords" style="width:170px;height:150px;" />
           <div class="caption">
        <h3>Nike Air</h3>
        <p>basketball shoes</p>
        <p><a href="disp.jsp?pname=Nike Air" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
       
      </div>
    </div>
    
    
    
    
       <div class="col-md-4">
      <div class="thumbnail">
      
          <img src="shoes1.jpg" alt="Fjords" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>Nike Tessen</h3>
        <p>Running shoes</p>
 <p><a href="disp.jsp?pname=Nike Tessen" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
      
      </div>
    </div>
    
       <div class="col-md-4">
      <div class="thumbnail">
    
          <img src="niketessen.jpg" alt="Fjords" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>Reebok Zeal</h3>
        <p>Running shoes for men</p>
        <p><a href="disp.jsp?pname=Reebok Zeal" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
      
      </div>
    </div>
    
    
       <div class="col-md-4">
      <div class="thumbnail">
      
          <img src="rebookelectrify.jpeg" alt="Fjords" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>Reebok Electrify</h3>
        <p>Casual shoes</p>
        <p><a href="disp.jsp?pname=Reebok Electrify" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
       
      </div>
    </div>
  </div>
</div>

</body>

<div  id="footer">
<center>
<H3>shpopping mall, Bhbaneswar, 7488230158   &nbsp;&nbsp;&copy;2018 All rights reserved</H3>
</div>

</html>


 
 
