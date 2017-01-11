<%-- 
    Document   : upload
    Created on : Jul 4, 2016, 12:52:48 AM
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

<table class="table" class="table-responsive">
    <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px"> User Profile</span></th>
      </tr>
    </thead>
    <tbody>
      <tr>
      
        <td><a href="changepassword.jsp">Change Password</a></td>

        
      </tr>
      <tr>
        <td><a href="contactdetails.jsp">Contact Details</a></td>
      </tr>
      
      <tr>
        <td><a href="professionaldetails.jsp">Experience Summary</a></td>
      </tr>
      
      <tr>
        <td><a href="educationdetails.jsp">Education Details</a></td>
      </tr>
      
      <tr>
        <td><a href="employmentdetails.jsp">Employment Details</a></td>
      </tr>
      
      <tr>
        <td><a href="projectdetails.jsp">Project Details</a></td>
      </tr>
      
      <tr>
        <td><a href="itskills.jsp">IT-Skills</a></td>
      </tr>
      
      <tr>
        <td><a href="desiredjobdetails.jsp">Desired Job Details</a></td>
      </tr>
      
      <tr>
        <td><a href="personaldetails.jsp">Personal Details</a></td>
      </tr>
    </tbody>
  </table>
  

<table class="table" class="table-responsive">
  <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px">Attached Resume</span></th>
      </tr>
    </thead>
    <tbody>
    
    <tr>
        <td><a href="upload.jsp">Upload</a></td>
      </tr>
    </tbody>
  </table>
  
  <table class="table" class="table-responsive">
    <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px">Search Jobs</span></th>
      </tr>
    </thead>
    <tbody>
      <tr>
      
        <td><a href="advancedjobsearch.jsp">Jobs by advanced search</a></td>

        
      </tr>
    </tbody>
  </table>
  
    <table class="table" class="table-responsive">
    <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px">Interview Schedule</span></th>
      </tr>
    </thead>
    <tbody>
      <tr>
      
        <td><a href="todayinterviews.jsp">Today's Interviews</a></td>

        
      </tr>
      
      <tr>
      
        <td><a href="futureinterviews.jsp">Future Interviews</a></td>

        
      </tr>
      
      <tr>
      
        <td><a href="previousinterviews.jsp">Previous Interviews</a></td>

        
      </tr>
    </tbody>
  </table>
  </div>
  <div class="col-sm-8">
  <p style="background-color:#3CF; color:#000; padding:10px;" align="center">Upload  <span style="font-family:Impact; background-color:#0CF; color:#FC6"> Resume</span></p>
    <form action="" method="post" enctype="multipart/form-data" name="form1">
      <table width="667" height="234" border="0" align="center" class="table-responsive">
        <tr>
          <td width="96" height="83">&nbsp;</td>
          <td width="272">&nbsp;</td>
          <td>&nbsp;</td>
          <td><input type="submit" name="logout" id="logout" value="Logout"></td>
        </tr>
        <tr>
          <td height="85">Choose File:</td>
          <td><label for="browse"></label>
          <input type="file" name="browse" id="browse"></td>
          <td width="133"><label for="file"></label></td>
          <td width="148">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="upload" id="upload" value="Upload"></td>
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>
    </form>
</div>
 <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
       <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
     <br>
    <br>
    <br>
       <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
       <br>
    <br>
    <br>
    <br>
    
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
</html>
