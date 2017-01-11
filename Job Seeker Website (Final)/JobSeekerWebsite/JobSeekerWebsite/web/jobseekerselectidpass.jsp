<%-- 
    Document   : jobseekerselectidpass
    Created on : Jul 5, 2016, 11:48:52 AM
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
        String Name="",Password="",ConPas="",choice="", User="", EmailID = "";
        
        Name=(String)(session.getAttribute("Name"));
        EmailID = (String)(session.getAttribute("EmailID"));
        ResultSet rs =st.executeQuery("select * from user where emailid like '"+EmailID+"' ");
        
       while(rs.next()){
            EmailID=rs.getString("emailid");
            Name=rs.getString("name");
         
                       }
        
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
         rs=st.executeQuery("select * from userData where Name like '"+Name+"' ");
        while(rs.next())
        {
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
          <table width="381" border="0" align="center" class="table-responsive">
            <tr>
              <td width="206" height="49">Username</td>
              <td width="165"><label for="username"></label>
              <input type="text" name="username" id="username" value="<%out.print(Name);%>"></td>
            </tr>
            <tr>
              <td height="55">Email ID</td>
              <td><label for="emailid"></label>
              <input type="text" name="emailid" id="emailid" value="<%out.print(EmailID);%>"></td>
            </tr>
            <tr>
              <td height="47">Password</td>
              <td><label for="password"></label>
              <input type="text" name="password" id="password"></td>
            </tr>
            <tr>
              <td height="42">Confirm Password</td>
              <td><label for="confirmpass"></label>
              <input type="text" name="confirmpass" id="confirmpass"></td>
            </tr>
            <tr>
              <td height="62">&nbsp;</td>
              <td>Personal Details</td>
            </tr>
            <tr>
              <td height="46">Full Name</td>
              <td><label for="fullname"></label>
              <input type="text" name="fullname" id="fullname"></td>
            </tr>
            <tr>
              <td height="36">Date Of Birth (dd/mm/yyyy)</td>
              <td><label for="dd"></label>
                <select name="dd" id="dd">
                </select>
                <label for="dd"></label>
                <select name="mm" id="dob">
                </select>
                <label for="dd"></label>
                <select name="yyyy" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="51">Gender</td>
              <td><label for="dd"></label>
                <select name="gender" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="47">Martial Status</td>
              <td><label for="dd"></label>
                <select name="martialstatus" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="45">Address</td>
              <td><label for="address"></label>
              <input type="text" name="address" id="address"></td>
            </tr>
            <tr>
              <td height="53">State</td>
              <td><label for="dd"></label>
                <select name="state" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="52">City</td>
              <td><label for="dd"></label>
                <select name="city" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="38">Phone Number</td>
              <td><label for="phonenumber"></label>
              <input type="text" name="phonenumber" id="phonenumber"></td>
            </tr>
            <tr>
              <td height="50">Mobile Number</td>
              <td><label for="university"></label>
              <input type="text" name="mobilenumber" id="username9"></td>
            </tr>
            <tr>
              <td height="42">Current Location</td>
              <td><label for="dd"></label>
                <select name="currlocation" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="47">&nbsp;</td>
              <td>Educational Details</td>
            </tr>
            <tr>
              <td height="52">Graduation</td>
              <td><label for="dd"></label>
                <select name="graduation" id="dob">
              </select></td>
            </tr>
            <tr>
              <td><p>
                <label>
                  <input type="radio" name="schooltime" value="fulltime" id="schooltime_0">
                  Full Time</label>
                <br>
                <label>
                  <input type="radio" name="schooltime" value="parttime" id="schooltime_1">
                  Part Time</label>
                <br>
                <label>
                  <input type="radio" name="schooltime" value="cd" id="schooltime_2">
                  Correspondance/Distance</label>
                <br>
              </p></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="43">Stream</td>
              <td><label for="dd"></label>
                <select name="stream" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="43">Year</td>
              <td><label for="dd"></label>
                <select name="year" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="53">University</td>
              <td><input type="text" name="university" id="username8"></td>
            </tr>
            <tr>
              <td height="50">Post Graduation</td>
              <td><label for="dd"></label>
                <select name="postgrad" id="dob">
              </select></td>
            </tr>
            <tr>
              <td><p>
                <label>
                  <input type="radio" name="schooltime2" value="fulltime" id="schooltime_0">
                  Full Time</label>
                <br>
                <label>
                  <input type="radio" name="schooltime" value="parttime" id="schooltime_1">
                  Part Time</label>
                <br>
                <label>
                  <input type="radio" name="schooltime" value="cd" id="schooltime_2">
                  Correspondance/Distance</label>
                <br>
              </p></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="44">Stream</td>
              <td><label for="dd"></label>
                <select name="stream2" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="50">University</td>
              <td><input type="text" name="university2" id="university2"></td>
            </tr>
            <tr>
              <td height="54">Passing Year</td>
              <td><label for="dd"></label>
                <select name="passyear" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="40">&nbsp;</td>
              <td>Resume Summary</td>
            </tr>
            <tr>
              <td height="50">Resume Headline</td>
              <td><input type="text" name="resumeheadline" id="resumeheadline"></td>
            </tr>
            <tr>
              <td height="53">Work Experience</td>
              <td><label for="dd"></label>
                <select name="workexperience" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="54">Key Skills</td>
              <td><input type="text" name="keyskills" id="keyskills"></td>
            </tr>
            <tr>
              <td height="44">Industry</td>
              <td><label for="dd"></label>
                <select name="industry" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="50">Functional Area</td>
              <td><label for="dd"></label>
                <select name="functionalarea" id="dob">
              </select></td>
            </tr>
            <tr>
              <td height="40">Previous Employer</td>
              <td><input type="text" name="previousemployer" id="previousemployer"></td>
            </tr>
            <tr>
              <td height="57">Current Organization</td>
              <td><input type="text" name="currorganization" id="currorganization"></td>
            </tr>
            <tr>
              <td height="53">Job Profile</td>
              <td><input type="text" name="jobprofile" id="jobprofile"></td>
            </tr>
            <tr>
              <td height="48">Current Location</td>
              <td><label for="dd"></label>
                <select name="currlocation" id="dob">
              </select></td>
            </tr>
            <tr>
              <td><input type="submit" name="submit" id="submit" value="Submit"></td>
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
