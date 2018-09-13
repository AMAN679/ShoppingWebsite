<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
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


<body bgcolor="pink" text="blue">
<!-- - --<a href="index.html">Home</a>
<a href="register.html">Register</a>
<a href="login.html">Login</a>
<a href="profile">Profile</a>
<a href="logout">Logout</a>-->

<%RequestDispatcher rd=request.getRequestDispatcher("header.jsp");
rd.include(request, response);%>
<h1 align="center">Student Register Application</h1>
<br>


<div class="container center_div">
<form class="form-horizontal" action="register" method="post" >
  <div class="form-group" >
    <label for="inputEmail3" class="col-sm-2 control-label">Name:</label>
    <div class="col-sm-10">
      <input type="text" name="name" style="width:500px;" class="form-control" id="inputEmail3" placeholder="Enter Name">
    </div>
  </div>
  
<div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Date of Birth:</label>
    <div class="col-sm-10">
      <input type="date" name="dob" class="form-control" id="inputEmail3" placeholder="Enter date of birth">
    </div>
  </div>  
  
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Mobile:</label>
    <div class="col-sm-10">
      <input type="text" name="mob" class="form-control" id="inputEmail3" placeholder="Mobile:">
    </div>
  </div>
  
  
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Address:</label>
    <div class="col-sm-10">
      <input type="text" name="address" class="form-control" id="inputEmail3" placeholder="Address">
    </div>
  </div>
  
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
    </div>
  </div>
</form>
</div>

<!--  -<form action="register" method="post">

Name:<input type="text" name="name" /><br>
Dob:<input type="date" name="dob" /><br>
Mobile:<input type="text" name="mob" /><br>
Address:<input type="text" name="address" /><br>
Email id:<input type="email" name="email"><br>
Password:<input type="password" name="pass" /><br>
<input type="submit" value="Register" />
<input type="reset" value="Clear"/>

</form>-->


</body>

<%RequestDispatcher rd1=request.getRequestDispatcher("footer.jsp");
rd1.include(request, response);%>
</html>