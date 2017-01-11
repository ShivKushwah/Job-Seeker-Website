<%-- 
    Document   : desiredjobdetails
    Created on : Jul 4, 2016, 12:43:18 AM
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
    <%@page language="java" %>
      <%@page import="java.sql.*" %>

<body background="wallpaper.jpg">



  <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseekerwebsite","root","");
        Statement st =con.createStatement();
        String Emailid="",Location="",JobType="",EmpStatus="";
        if(request.getParameter("update")!=null)
                         {
            Emailid=request.getParameter("emailid");
            Location=request.getParameter("location");
            
            JobType=request.getParameter("jobtype");
            EmpStatus=request.getParameter("empstatus");
             st.executeUpdate("insert into desiredjobdetails values('"+Emailid+"','"+Location+"','"+JobType+"','"+EmpStatus+"')");
             out.print("<script>alert('Record is Saved')   </script>");
            
        }
        
        
        
        
        %>


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
  <p style="background-color:#3CF; color:#000; padding:10px;" align="center">Desired Job <span style="font-family:Impact; background-color:#0CF; color:#FC6"> Skills</span></p>
    <form name="form1" method="post" action="">
      <table width="680" border="0"  align="center" class="table-responsive">
        <tr>
          <td width="164" height="55"><label for="emailid"></label>
            <input type="text" name="emailid" id="emailid"></td>
          <td width="392">&nbsp;</td>
          <td width="102"><input type="submit" name="logout" id="logout" value="Logout"></td>
        </tr>
        <tr>
          <td height="46">Location</td>
          <td><label for="location"></label>
          <input type="text" name="location" id="location"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="44">Job Type</td>
          <td><label for="jobtype"></label>
          <input type="text" name="jobtype" id="jobtype"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="46">Employment Status</td>
          <td><label for="empstatus"></label>
          <input type="text" name="empstatus" id="empstatus"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><input type="submit" name="update" id="update" value="update"></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
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
