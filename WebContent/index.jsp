<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#img0{
width:100px;
}


div.item{
width:500px;
height:500px;
}
.img1{
width:500px;
height:500px;
}
div {
    background-color:#F5F5F5;
}

</style>



<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>


</head>

<%RequestDispatcher rd=request.getRequestDispatcher("header.jsp"); 
rd.include(request, response);
%>
<body >


<div class="page-header">

 <center><h1><img src="shop.jpg" id="img0"/>Shopping Mall <small>Your comfort is our Goal.</small></h1></center>
</div>



<marquee  behavior="alternate" height="150px">
                                  <img src="shoes1.jpg" width="200px" height="150px" />
                                 <img src="shoes2.jpg" width="200px" height="150px" />
                                 <img src="laptop.jpg" width="200px" height="150px" />
                                 <img src="laptop2.jpg" width="200px" height="150px" />
                                   <img src="book1.jpg" width="200px" height="150px" />
                                  <img src="book2.jpg" width="200px" height="150px" />
                                  
                                   
                             </marquee>

</body>
<%RequestDispatcher rd1=request.getRequestDispatcher("footer.jsp"); 
rd1.include(request, response);
%>
</html>