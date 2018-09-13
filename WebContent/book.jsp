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
width:250px;
height:250px;
}

a{
color:white;
}
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
       
          <img src="indianpolity.jpg" alt="indianpolity" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>Indian Polity</h3>
        
        <p><a href="disp.jsp?pname=Indian Polity" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
        
        
        
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        
          <img src="oneindiangirl.jpg" alt="Nature" style="width:170px;height:150px;"/>
           <div class="caption">
        <h3>One Indian Girl</h3>
        
         <p><a href="disp.jsp?pname=One Indian Girl" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
       
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        
          <img src="indianhistory.jpg" alt="Fjords" style="width:170px;height:150px;"/>
           <div class="caption">
        <h3>Indian History</h3>
        <p><a href="disp.jsp?pname=Indian History" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
       
      </div>
    </div>
    
    
    
    
       <div class="col-md-4">
      <div class="thumbnail">
      
          <img src="indianeconomy.jpg" alt="Fjords" style="width:170px;height:150px;"/>
            <div class="caption">
        <h3>Indian Economy</h3>
    
 <p><a href="disp.jsp?pname=Indian Economy" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
      
      </div>
    </div>
    
       <div class="col-md-4">
      <div class="thumbnail">
    
          <img src="theblueumbrella.jpg" alt="Fjords" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>The Blue Umbrella</h3>
      
        <p><a href="disp.jsp?pname=The Blue Umbrella" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
      
      </div>
    </div>
    
    
       <div class="col-md-4">
      <div class="thumbnail">
      
          <img src="wingsoffire.jpg" alt="Fjords" style="width:170px;height:150px;" />
            <div class="caption">
        <h3>Wings of Fire</h3>
        
        <p><a href="disp.jsp?pname=Wings of Fire" class="btn btn-primary" role="button">Details</a> <a href="#" class="btn btn-default" role="button">Add to cart</a></p>
      </div>
       
      </div>
    </div>
  </div>
</div>

</body>



</html>


 
 
