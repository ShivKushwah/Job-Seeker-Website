<%-- 
    Document   : employerjobentrymanagement
    Created on : Jul 4, 2016, 3:32:29 AM
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
      <li class="active"><a href="#">Home</a></li>
      <li><a href="profile.html">Profile</a></li>
      <li><a href="services.html">Services</a></li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Registration
        <span class="caret"></span></a>
        <ul class="dropdown-menu" style="width:inherit">
          <li><a href="#">Job Seeker Zone</a></li>
          <li><a href="#">Employee Zone</a></li>
        </ul>
      </li>
      <li><a href="contactus.html">Contact Us</a></li>
      <li><a href="admin.html">Admin</a></li>
    </ul>
  </div>
</nav>


</div>

    </head>
    <body>
    
    <div class="container-fluid" style="margin-left:70px; margin-right:70px"> 

<div class="row"> 

<div class="col-sm-3" style="background-color:#EAEAEA; margin-bottom:0px; border:#B0B0B0 solid">

<table class="table">
    <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px"> Login</span></th>
      </tr>
    </thead>
    <tbody>
      <tr>
      
        <td><a href="profile.html">Job Seeker Zone</a></td>

        
      </tr>
      <tr>
        <td><a href="#">Employer Zone</a></td>
      </tr>
    </tbody>
  </table>
  

<table class="table">
  <thead>
      <tr>
        <th><span style="font-family:'Comic Sans MS', cursive; font-size:26px">News</span></th>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>
  
  <table class="table">
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
  <p style="background-color:#3CF; color:#000; padding:10px;" align="center">EMPLOYER JOB ENTRY<span style="font-family: Impact; color: #FC6; background-color: #0CF"> </span><span style="font-family:Impact; background-color:#0CF; color:#FC6"> MANAGEMENT </span></p>
    <form name="form1" method="post" action="">
      <table width="400" border="0" style="margin-left:150px; margin-top:50px">
        <tr>
          <td width="164" height="42"><label for="email"></label>
          <input type="text" name="email" id="email"></td>
          <td width="170">&nbsp;</td>
          <td width="44"><input type="submit" name="logout" id="logout" value="Logout"></td>
        </tr>
        <tr>
          <td height="45">Job Code</td>
          <td><label for="jobcode2"></label>
          <input type="text" name="jobcode" id="jobcode"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="44">Job Name</td>
          <td><label for="jobname"></label>
          <input type="text" name="jobname" id="jobname"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="51">No. of Post</td>
          <td><label for="nopost"></label>
          <input type="text" name="nopost" id="nopost"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="59">Pay Scale</td>
          <td><label for="payscale"></label>
          <input type="text" name="payscale" id="payscale"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="50">Key Skills</td>
          <td><label for="joblocation"></label>
          <input type="text" name="keyskills" id="email7"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="54">Job Location</td>
          <td><label for="experience"></label>
            <label for="joblocation"></label>
            <select name="joblocation" id="joblocation">
          </select></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="61">Experience Required</td>
          <td><label for="status"></label>
            <label for="joblocation"></label>
            <select name="experiencerequired" id="joblocation">
          </select></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="53">Status</td>
          <td><label for="contactperson"></label>
          <input type="text" name="status" id="email10"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="65">Contact Person</td>
          <td><label for="coname"></label>
          <input type="text" name="contactperson" id="email11"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="51">Company Name</td>
          <td><label for="mobileno"></label>
          <input type="text" name="coname" id="email12"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="57">Mobile No</td>
          <td><label for="hremail"></label>
          <input type="text" name="mobileno" id="email13"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="64">Hr_Email ID</td>
          <td><label for="jobcode2"></label>
          <input type="text" name="hremail" id="email14"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="58">Job Code</td>
          <td><label for="email15"></label>
          <input type="text" name="jobcode2" id="email15"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="submit" id="submit" value="Submit">
          <input type="submit" name="find" id="find" value="Find">
          <input type="submit" name="update" id="update" value="Update">
          <input type="submit" name="delete" id="delete" value="Delete"></td>
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


