<%-- 
    Document   : projectdetails
    Created on : Jul 3, 2016, 11:00:47 AM
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
        String Email="",Client="",Title="",Location="", ProjectDetails="", YourRole="";
        if(request.getParameter("savechanges")!=null)
                         {
            Email=request.getParameter("email");
            Client=request.getParameter("client");
            
            Title=request.getParameter("title");
            Location=request.getParameter("location");
            ProjectDetails=request.getParameter("projectdetails");
            YourRole=request.getParameter("yourrole");
          
            
             st.executeUpdate("insert into projectdetails values('"+Email+"','"+Client+"',0,1,2,3,'"+Title+"','"+Location+"','"+ProjectDetails+"','"+YourRole+"')");
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
  <p style="background-color:#3CF; color:#000; padding:10px;" align="center"> PROJECT <span style=" font-family:Impact; background-color:#0CF; color:#FC6"> DETAILS</span></p>
    <form name="form1" method="post" action="">
      <table width="888" border="0" align="center" class="table-responsive">
        <tr>
          <td width="148"><label for="email"></label>
          <input type="text" name="email" id="email"></td>
          <td width="523">&nbsp;</td>
          <td width="203"><input type="submit" name="logout" id="logout" value="Logout"></td>
        </tr>
        <tr>
          <td height="54">Client</td>
          <td><input type="text" name="client" id="client"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="57">Duration</td>
          <td>From 
            <label for="1"></label>
            <select name="1" id="1">
          </select>
            <label for="1"></label>
            <select name="12" id="1">
          </select></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="57">Title</td>
          <td><input type="text" name="title" id="title"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="57">Location</td>
          <td><input type="text" name="location" id="location"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="68">Project Details</td>
          <td><input type="text" name="projectdetails" id="projectdetails"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="73">Your Role</td>
          <td><input type="text" name="yourrole" id="yourrole"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><input type="submit" name="savechanges" id="savechanges" value="Save Changes"></td>
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
