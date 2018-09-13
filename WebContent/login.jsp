<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>

<style>

input.form-control{
width:500px;


}

.center_div{
    margin-left:350px;
    width:80% /* value of your choice which suits your alignment */
}

</style>

</head>


<ul class="nav nav-pills">
  <li role="presentation" ><a href="index.jsp">Home</a></li>
  <li role="presentation"><a href="#">Shoes</a></li>
  <li role="presentation"><a href="#">Books</a></li>
  
  <li role="presentation"><a href="#">Laptop</a></li>
  
  <li role="presentation"><a href="login.jsp">Login</a></li>
  

  <li role="presentation"><a href="register.jsp">Register</a></li>
</ul>




<!-- - --<body bgcolor="pink" text="blue">
<!-- - --<a href="index.html">Home</a>
<a href="register.html">Register</a>
<a href="login.html">Login</a>
<a href="profile">Profile</a>
<a href="logout">Logout</a>
<hr>
<h1 align="center">Student Login</h1><hr><hr>
<br>-->
<body>
<h1 align="center">Student Login</h1>

<b><hr></b>





<div class="container center_div">
<form class="form-horizontal" action="login" method="post" >
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="text" name="email" class="form-control" id="inputEmail3" placeholder="Email">
    </div>
  </div>
  
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" name="pass" class="form-control" id="inputPassword3" placeholder="Password">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Log in</button>
         <a class="btn btn-default" href="register.jsp" id="reg" role="button">Register</a>
    </div>
  </div>
  
  
 

</form>
</div>




















<!-- - --<form action="login" method="post">


Email id:<input type="email" name="email"><br>
Password:<input type="password" name="pass" /><br><br><br>

<input type="submit" value="Login" />
<input type="reset" value="Clear"/><br><br>

<a class="btn btn-default" href="#" role="button">Link</a>
</form>-->





</body>


<%RequestDispatcher rd=request.getRequestDispatcher("footer.jsp"); 
rd.include(request, response);
%>


</html>