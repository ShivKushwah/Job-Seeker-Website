<%-- 
    Document   : contactdetails
    Created on : Jul 3, 2016, 6:55:12 AM
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
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/serverexperiment","root","");
        Statement st =con.createStatement();
        String Name="",Password="",ConPas="",choice="", User="";
        if(request.getParameter("Submit")!=null)
                         {
            Name=request.getParameter("Name");
            Password=request.getParameter("Password");
            
            ConPas=request.getParameter("ConPas");
            choice=request.getParameter("choice");
            User=request.getParameter("User");
             st.executeUpdate("insert into userData values('"+Name+"','"+Password+"','"+ConPas+"','"+choice+"','"+User+"')");
             out.print("<script>alert('Record is Saved')   </script>");
            Name="";
            Password="";ConPas="";choice=""; User="";
            
        }
        if(request.getParameter("Find")!=null)
                       {
        Name=request.getParameter("Name");
        ResultSet rs=st.executeQuery("select * from userData where Name like '"+Name+"' ");
        while(rs.next()){
            Name=rs.getString("Name");
            Password=rs.getString("Password");
            ConPas=rs.getString("Conpas");
            choice=rs.getString("choice");
            User=rs.getString("User");
        }
          }
        if(request.getParameter("Update") != null)
                       {
           Name=request.getParameter("Name");
            Password=request.getParameter("Password");
            
            ConPas=request.getParameter("ConPas");
            choice=request.getParameter("choice");
            User=request.getParameter("User");
            st.executeUpdate("update userData set Password='"+Password+"',ConPas='"+ConPas+"', choice='"+choice+"',  User='"+User+"' where Name = '"+Name+"'");
             out.print("<script>alert('Record is Updated')   </script>");
        }
       
        if(request.getParameter("Delete")!=null)
                     {
                 Name=request.getParameter("Name");
                 st.executeUpdate("delete from userData where Name='"+Name+"' ");
                   out.print("<script>alert('Record is updated') </script>");
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
        <td><a href="#">Contact Details</a></td>
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
  <p style="background-color:#3CF; color:#000; padding:10px;" align="center"> CONTACT <span style=" font-family:Impact; background-color:#0CF; color:#FC6"> DETAILS</span></p> 
        <form name="form1" method="post" action="">
          <table width="662" border="0" align="center" class="table-responsive">
            <tr>
              <td width="104" height="57">Name</td>
              <td width="319"><input type="text" name="name" id="name"></td>
              <td width="217"><p>
                <label for="name"></label>
                <input type="submit" name="logout" id="logout" value="Logout">
              </p></td>
            </tr>
            <tr>
              <td height="62">Email ID</td>
              <td><input type="text" name="emailid" id="emailid"></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="69">Current Location</td>
              <td><input type="text" name="location" id="location"></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Mobile Number</td>
              <td><input type="text" name="mobilenumber" id="mobilenumber"></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><input type="submit" name="update" id="update" value="Update"></td>
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
        