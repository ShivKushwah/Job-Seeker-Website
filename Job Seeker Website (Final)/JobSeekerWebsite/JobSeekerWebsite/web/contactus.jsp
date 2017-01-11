<%-- 
    Document   : contactus
    Created on : Jul 4, 2016, 4:27:46 AM
    Author     : Shivendra Kushwah
--%>

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
        String FName="",LName="",Email="",Phone="", Address="", City="", State="", Postcode="", Country="", Subject="", Other="", Suggestions="";
        if(request.getParameter("submit")!=null)
                         {
            FName=request.getParameter("fname");
            LName=request.getParameter("lname");
            
            Email=request.getParameter("email");
            Phone=request.getParameter("phone");
            Address=request.getParameter("address");
            City=request.getParameter("city");
            State=request.getParameter("state");
            
            Postcode=request.getParameter("postcode");
            Country=request.getParameter("country");
            Subject=request.getParameter("subject");
            Other=request.getParameter("other");
            Suggestions=request.getParameter("suggestions");
    
             st.executeUpdate("insert into contactus values('"+FName+"','"+LName+"','"+Email+"','"+Phone+"','"+Address+"','"+City+"','"+State+"','"+Postcode+"','"+Country+"','"+Subject+"','"+Other+"','"+Suggestions+"')");
             out.print("<script>alert('Form Sent!')   </script>");
             FName="";
             LName="";
             Email="";
             Phone="";
             Address="";
             City="";
             State="";
             Postcode="";
             Country="";
             Subject="";
             Other="";
             Suggestions="";
            
            
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
          <li><a href="registrationemployer.jsp">Employer Zone</a></li>
        </ul>
      </li>
      <li class="active"><a href="#">Contact Us</a></li>
      <li><a href="adminlogin.jsp">Admin</a></li>
    </ul>
  </div>
</nav>


</div>

<marquee> <span style="font-size:24px; font-family:'Palatino Linotype', 'Book Antiqua', Palatino, serif"> Welcome! </span> </marquee>

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
  <p style="background-color:#3CF; color:#000; padding:10px;" align="center">CONTACT<span style="font-family: Impact; color: #FC6; background-color: #0CF"> </span><span style="font-family:Impact; background-color:#0CF; color:#FC6"> US </span></p>
  
    <form name="form1" method="post" action="">
      <table width="520" border="0" align="center" class="table-responsive">
        <tr>
          <td width="249" height="48">First Name</td>
          <td width="255"><label for="fname"></label>
          <input type="text" name="fname" id="fname"></td>
        </tr>
        <tr>
          <td height="59">Last Name</td>
          <td><label for="lname"></label>
          <input type="text" name="lname" id="lname"></td>
        </tr>
        <tr>
          <td height="38">Email</td>
          <td><label for="email"></label>
          <input type="text" name="email" id="email"></td>
        </tr>
        <tr>
          <td height="46">Phone</td>
          <td><label for="phone"></label>
          <input type="text" name="phone" id="phone"></td>
        </tr>
        <tr>
          <td height="38">Address</td>
          <td><label for="address"></label>
          <input type="text" name="address" id="address"></td>
        </tr>
        <tr>
          <td height="43">City</td>
          <td><label for="fname6"></label>
            <label for="city"></label>
            <select name="city" id="city">
          </select></td>
        </tr>
        <tr>
          <td height="45">State</td>
          <td><label for="fname7"></label>
            <label for="city"></label>
            <select name="state" id="city">
          </select></td>
        </tr>
        <tr>
          <td height="39">Postal Code</td>
          <td><label for="postcode"></label>
          <input type="text" name="postcode" id="postcode"></td>
        </tr>
        <tr>
          <td height="34">Country</td>
          <td><label for="fname9"></label>
            <label for="city"></label>
            <select name="country" id="city">
          </select></td>
        </tr>
        <tr>
          <td height="52">Subject</td>
          <td><label for="subject"></label>
          <input type="text" name="subject" id="subject"></td>
        </tr>
        <tr>
          <td height="40">Other</td>
          <td><label for="other"></label>
          <input type="text" name="other" id="other"></td>
        </tr>
        <tr>
          <td height="33">Suggestions</td>
          <td><label for="suggestions"></label>
          <input type="text" name="suggestions" id="suggestions"></td>
        </tr>
        <tr>
          <td height="41"><input type="submit" name="submit" id="submit" value="Submit"></td>
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
    </div>
    </div>
    
    <div class="container-fluid" style="border:#FFF">

<div class="row">

<div class="col-sm-6" style="background:#666">
<h3 align="left" style="font-family:'Times New Roman', Times, serif">©2016 by JOB SEEKER CONSULTANTS PVT LTD </h3>


</div>
<div class="col-sm-6" style="background:#666">
<h3 align="right" style="font-family:'Times New Roman', Times, serif"> Developed by Shiv Kushwah </h3>
</div>
</div>


</div>
    </body>
</html>



