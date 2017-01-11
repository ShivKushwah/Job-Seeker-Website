<%-- 
    Document   : Jobseeker
    Created on : Jul 4, 2016, 5:13:59 AM
    Author     : Shivendra Kushwah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
        String Name="",Email="",Message="";
        if(request.getParameter("submit")!=null)
                         {
            Name=request.getParameter("Name");
            Email=request.getParameter("Email");
            
            Message=request.getParameter("Message");
		
             st.executeUpdate("insert into jobseeker values('"+Name+"','"+Email+"','"+Message+"')");
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
      <li class="active"><a href="#">Home</a></li>
      <li><a href="profile.html">Profile</a></li>
      <li><a href="services.html">Services</a></li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Registration
        <span class="caret"></span></a>
        <ul class="dropdown-menu" style="width:inherit">
          <li><a href="login.jsp">Job Seeker Zone</a></li>
          <li><a href="registrationemployer.jsp">Employer Zone</a></li>
        </ul>
      </li>
      <li><a href="contactus.jsp">Contact Us</a></li>
      <li><a href="adminlogin.jsp">Admin</a></li>
    </ul>
  </div>
</nav>


</div>

<marquee> <span style="font-size:24px; font-family:'Palatino Linotype', 'Book Antiqua', Palatino, serif"> Welcome! </span> </marquee>

<div class="container-fluid" style="margin-left:70px; margin-right:70px"> 

<div class="row"> 

<div class="col-sm-3" style="background-color:#EAEAEA; margin-bottom:0px; border:#B0B0B0 solid">

<table class="table" class="table-responsive">
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
  

<table class="table" class="table-responsive">
  <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px">News</span></th>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>
  
  <table class="table" class="table-responsive">
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

<!--

  <h2><span style="font-family:'Comic Sans MS', cursive; height:1000px">Login</span></h2>
  <div class="btn-group-vertical">
    <a href="profile.html">
    <button type="button" class="btn btn-primary">Job Seeker Zone</button></a>
    <button type="button" class="btn btn-primary">Employers Zone</button>
  </div>
  <h2> <span style="font-family:'Comic Sans MS', cursive">Current News </span></h2>
    <div class="btn-group-vertical">
    <button type="button" class="btn btn-primary"></button>
  </div>
  
  <h2> <span style="font-family:'Comic Sans MS', cursive">Best Consultant Zone </span></h2>
   <div class="btn-group-vertical">
    <button type="button" class="btn btn-primary">California</button>
    <button type="button" class="btn btn-primary">New Delhi</button>
    <button type="button" class="btn btn-primary">Idaho</button>
    <button type="button" class="btn btn-primary">Indore</button>
    <button type="button" class="btn btn-primary">South Africa</button>
    <button type="button" class="btn btn-primary">San Ramon</button>
  </div>
  
  -->
  



<div class="col-sm-1">
</div>
<div class="col-sm-4" style="background-color:#EAEAEA; border:#B0B0B0 solid; background:#EAEAEA; font-family:'Palatino Linotype', 'Book Antiqua', Palatino, serif">

<p style="background-color:#3CF; color:#000; padding:10px;" align="center"> WELCOME TO <span style=" font-family:Impact; background-color:#0CF; color:#FC6"> JOB SEEKER</span></p> 



<p style="line-height:30px; font-family:'Times New Roman', Times, serif">JOB SEEKER CONSULTANTS PVT LTD. is a leading jobs placement provider company which connects employers to potential employees. We use bleeding edge technology to match job opportunities to the job seekers that match the skillset and qualfications level. Our prime objective is assisting you in planning your career. Our data bank include jobs from all levels including, but not limited to, P&A HRD, Finance, Sales & Marketing, Production Engineering, Process engineering ,Purchase, QC and QA, R&D, Administration (Technical & Commercial). We have experts in all disciplines in order to streamline the selection process and to select the best candidates for our clients, and we have the best reputation in the industry.</p>
<br>
<br>
</div>

<div class="col-sm-4" style="background-color:#EAEAEA; border:#B0B0B0 solid">
<p style="background-color:#3CF; color:#000; padding:10px;" align="center"> QUICK <span style=" font-family:Impact; background-color:#0CF; color:#FC6"> MESSAGE</span></p> 
<div style="overflow-x:auto;">





<form name="form1" method="post" action="">
    </form>
    <table width="376" height="315" border="0" align="center" class="table-responsive">
      <tr>
        <td width="105" height="55">Name:</td>
        <td width="261"><form name="form2" method="post" action="">
          <label for="Name"></label>
          <input name="Name" type="text" id="Name">
        </form></td>
      </tr>
      <tr>
        <td height="71">Email:</td>
        <td><input type="text" name="Email" id="Email"></td>
      </tr>
      <tr>
        <td height="52">Message:</td>
        <td><form name="form4" method="post" action="">
          <label for="Message"></label>
            <textarea name="Message" id="Message"></textarea>
        </form></td>
      </tr>
      <tr>
        <td height="127"><form name="form3" method="post" action="">
          <input type="submit" name="submit" id="submit" value="submit">
        </form></td>
        <td>&nbsp;</td>
      </tr>
    </table>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>

</div>

</div>

</div>

<div class="container-fluid" style="margin-left:70px; margin-right:70px; margin-top:10px"> 

<div class="row"> 

<!--div class="col-sm-4" style="background-color:#EAEAEA; border:#B0B0B0 solid"-->
<div class="col-sm-4">


</div>

<div class="col-sm-4" style="background-color:#EAEAEA; border:#B0B0B0 solid;" >


<p style="background-color:#3CF; color:#000; padding:10px;" align="center"> JOB OPPORTUNITIES <span style=" font-family:Impact; background-color:#0CF; color:#FC6"> INCLUDE:</span></p> 

<p style="line-height:30px; font-family:'Times New Roman', Times, serif">
Sales Officer (FMCG) <br>
Required Software Developer in Indore <br>
Required Software Developer in Pune <br>
Android application developer Retail Stores Manager (Tiles) <br>
<br>
<br>
<br>





</p>
</div>

<div class="col-sm-4" style="background-color:#EAEAEA; border:#B0B0B0 solid">

<p style="background-color:#3CF; color:#000; padding:10px;" align="center"> OUR <span style=" font-family:Impact; background-color:#0CF; color:#FC6"> CLIENTS</span></p> 

<p style="line-height:30px; font-family:'Times New Roman', Times, serif;">
Microsoft <br>
Oracle <br>
Golu Inc <br>
Google <br>
Amazon <br>
Juhi LLC <br>
FaceBook <br>
</p>
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
<!--
<footer style="height:100px">
<h2 style="background:#666" align="center"> Copyright 2016 by Shiv </h4>
</footer>
-->
</html>


