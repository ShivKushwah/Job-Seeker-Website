<%-- 
    Document   : employerselectidpass
    Created on : Jul 5, 2016, 11:57:31 PM
    Author     : Shivendra Kushwah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

   <head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/style.css"/>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="jquery/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <style>
 
 .navbar{
	background-color:#3CF;	 
	 
	 
	 
	 
	 
	 
	 }

	 .navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus{
	color: #000;
	background-color: #FC6;
	 }
 .navbar-inverse .navbar-nav>.active>a:hover{
	 color:#F00;
	 background-color:#FFF;
 }
 
 .navbar-inverse .navbar-brand {
	color:#000;	 
 }
 
 .navbar-inverse .navbar-nav>li>a {
 	color:#000;
 }
 
 </style>
</head>
<body background="wallpaper.jpg">

<div class="container-fluid" style="margin-left:70px; margin-right:70px">
<div class="row"> 

<div class="col-sm-12" >

<img src="jobseeker2.png" class="img-responsive" style="height:370px; width:1400px"/>
</div>
</div>


</div>

<div class="container-fluid" style="margin-left:70px; margin-right:70px">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><span style="font-family:Impact">Job Seeker</span></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="Jobseeker.jsp">Home</a></li>
      <li><a href="profile.html">Profile</a></li>
      <li><a href="services.html">Services</a></li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Registration
        <span class="caret"></span></a>
        <ul class="dropdown-menu" style="width:inherit">
          <li><a href="login.jsp">Job Seeker Zone</a></li>
          <li><a href="registrationemployer.jsp">Employee Zone</a></li>
        </ul>
      </li>
      <li><a href="contactus.jsp">Contact Us</a></li>
      <li><a href="adminlogin.jsp">Admin</a></li>
    </ul>
  </div>
</nav>

</div>

    </head>
    <body>
    
    <div class="container-fluid" style="margin-left:70px; margin-right:70px"> 

<div class="row"> 

<div class="col-sm-3" style="background-color:#EAEAEA; margin-bottom:0px; border:#B0B0B0 solid">

<table class="table"  class="table-responsive">
    <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px"> Login</span></th>
      </tr>
    </thead>
    <tbody>
      <tr>
      
        <td><a href="jobseekerlogin.jsp">Job Seeker Zone</a></td>

        
      </tr>
      <tr>
        <td><a href="employerlogin.jsp">Employer Zone</a></td>
      </tr>
    </tbody>
  </table>
  

<table class="table"  class="table-responsive">
  <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px">News</span></th>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>
  
  <table class="table"  class="table-responsive">
    <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px"> Best Consultant Zone</span></th>
      </tr>
    </thead>
    <tbody>
      <tr>
      
        <td><a href="#">California</a></td>

        
      </tr>
      <tr>
        <td><a href="#">New Delhi</a></td> 
      </tr>
      <tr>
        <td><a href="#">Indore</a></td> 
      </tr>
      <tr>
        <td><a href="#">San Ramon</a></td> 
      </tr>
    </tbody>
  </table>
  </div>
  <div class="col-sm-8">
  <p style="background-color:#3CF; color:#000; padding:10px;" align="center">CREATE <span style="font-family:Impact; background-color:#0CF; color:#FC6"> ACCOUNT! </span></p>
        <form name="form1" method="post" action="">
          <table width="373" border="0" align="center" class="table-responsive">
            <tr>
              <td width="193" height="42">Email ID</td>
              <td width="170"><label for="emailid"></label>
              <input type="text" name="emailid" id="emailid"></td>
            </tr>
            <tr>
              <td height="49">Password</td>
              <td><label for="password"></label>
              <input type="text" name="password" id="password"></td>
            </tr>
            <tr>
              <td height="42">Confirm Password</td>
              <td><label for="confirmpass"></label>
              <input type="text" name="confirmpass" id="confirmpass"></td>
            </tr>
            <tr>
              <td height="56">Company Name</td>
              <td><label for="coname"></label>
              <input type="text" name="coname" id="coname"></td>
            </tr>
            <tr>
              <td height="52">Company Type</td>
              <td><label for="cotype"></label>
                <p>
                  <label>
                    <input type="radio" name="cotype" value="Company" id="cotype_0">
                    Company</label>
                  <br>
                  <label>
                    <input type="radio" name="cotype" value="Consultant" id="cotype_1">
                    Consultant</label>
                  <br>
              </p></td>
            </tr>
            <tr>
              <td height="44">Industry Type</td>
              <td><label for="industrytype"></label>
                <select name="industrytype" id="industrytype">
              </select></td>
            </tr>
            <tr>
              <td height="52">Address</td>
              <td><label for="country"></label>
              <input type="text" name="address" id="emailid8"></td>
            </tr>
            <tr>
              <td height="65">Country</td>
              <td><label for="state"></label>
                <select name="country" id="country">
              </select></td>
            </tr>
            <tr>
              <td height="52">State</td>
              <td><label for="city">
                <select name="state" id="state">
                </select>
              </label></td>
            </tr>
            <tr>
              <td height="63">City</td>
              <td><label for="pincode">
                <select name="city" id="city">
                </select>
              </label></td>
            </tr>
            <tr>
              <td height="48">Pincode</td>
              <td><label for="contactperson"></label>
              <input type="text" name="pincode" id="emailid13"></td>
            </tr>
            <tr>
              <td height="52">Contact Number</td>
              <td><label for="emailid14"></label>
              <input type="text" name="contactno" id="emailid14"></td>
            </tr>
            <tr>
              <td height="76">Contact Person</td>
              <td><label for="emailid15"></label>
              <input type="text" name="contactperson" id="emailid15"></td>
            </tr>
            <tr>
              <td height="48"><input type="submit" name="submit" id="submit" value="Submit"></td>
              <td>&nbsp;</td>
            </tr>
          </table>
        </form>
</div>
  </div>
  </div>
    
    
    <div class="container-fluid" style="border:#FFF">

<div class="row">

<div class="col-sm-6" style="background:#666">
<h3 align="left" style="font-family:'Times New Roman', Times, serif"> ©2016 by JOB SEEKER CONSULTANTS PVT LTD </h3>


</div>
<div class="col-sm-6" style="background:#666">
<h3 align="right" style="font-family:'Times New Roman', Times, serif"> Developed by Shiv Kushwah </h3>
</div>
</div>




</div>




</body>
    </body>
</html>
