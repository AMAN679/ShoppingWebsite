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
color:white;}
</style>
</head>

<% RequestDispatcher rd=request.getRequestDispatcher("header1.jsp");
rd.include(request,response);
%>

<body>
<div class="container">
  <h2 align="center">Shoes Corner</h2>
  <br>
  
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
       
          <img src="ideapad.jpeg" alt="lenovoideapad" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>Lenovo Ideapad</h3>
        <p>Sneakers for men</p>
        <p><a href="disp.jsp?pname=lenovoideapad" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
        
        
        
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        
          <img src="lenovoinverse.jpg" alt="lenovoinverse" style="width:170px;height:150px;" />
           <div class="caption">
        <h3>Lenovo Inverse</h3>
        <p>sport shoes</p>
         <p><a href="disp.jsp?pname=Lenovo Inverse" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
       
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        
          <img src="hpspectre.jpg" alt="hpspectre" style="width:170px;height:150px;" />
           <div class="caption">
        <h3>HP Spectre</h3>
        <p>basketball shoes</p>
        <p><a href="disp.jsp?pname=HP Spectre" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
       
      </div>
    </div>
    
    
    
    
       <div class="col-md-4">
      <div class="thumbnail">
      
          <img src="hpprobook.jpg" alt="hpprobook" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>HP Probook</h3>
        <p>Running shoes</p>
 <p><a href="disp.jsp?pname=HP Probook" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
      
      </div>
    </div>
    
       <div class="col-md-4">
      <div class="thumbnail">
    
          <img src="hppavilion.jpg" alt="hppavilion" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>HP Pavilion</h3>
        <p>Running shoes for men</p>
        <p><a href="disp.jsp?pname=HP Pavilion" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
      
      </div>
    </div>
    
    
       <div class="col-md-4">
      <div class="thumbnail">
      
          <img src="applemacbook.jpg" alt="applemacbook" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>Apple Mac Book</h3>
        <p>Casual shoes</p>
        <p><a href="disp.jsp?pname=Apple Mac Book" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
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


 
 
