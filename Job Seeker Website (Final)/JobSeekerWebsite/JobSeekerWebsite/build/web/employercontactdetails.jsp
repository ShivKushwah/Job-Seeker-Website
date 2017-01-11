<%-- 
    Document   : employercontactdetails
    Created on : Jul 4, 2016, 2:11:54 AM
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
  <p style="background-color:#3CF; color:#000; padding:10px;" align="center">CONTACT<span style="font-family: Impact; color: #FC6; background-color: #0CF"> </span><span style="font-family:Impact; background-color:#0CF; color:#FC6"> DETAILS </span></p>
    <form name="form1" method="post" action="">
      <table width="920" border="0" style="margin-left:150px; margin-top:50px">
        <tr>
          <td width="200" height="55"><label for="email"></label>
          <input type="text" name="email" id="email"></td>
          <td width="409">&nbsp;</td>
          <td width="297"><input type="submit" name="logout" id="logout" value="Logout"></td>
        </tr>
        <tr>
          <td height="49">Company Name</td>
          <td><input type="text" name="coname" id="coname"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="69">Company Type</td>
          <td><p>
            <label>
              <input type="radio" name="cotype" value="compnay" id="cotype_0">
              Company</label>
            <br>
            <label>
              <input type="radio" name="cotype" value="consultant" id="cotype_1">
              Consultant</label>
            <br>
          </p></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="49">Industry Type</td>
          <td><select name="intype" id="intype">
          </select></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="54">Address</td>
          <td><input type="text" name="address" id="address"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="63">Country</td>
          <td><select name="country" id="country">
          </select></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="71">State</td>
          <td><select name="state" id="state">
          </select></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="64">City</td>
          <td><select name="city" id="city">
          </select></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="50">Pincode</td>
          <td><input type="text" name="pincode" id="pincode"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="55">Contact Number</td>
          <td><input type="text" name="contactno" id="contactno"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="65">Contact Person</td>
          <td><input type="text" name="contactperson" id="contactperson"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="50"><input type="submit" name="update" id="update" value="Update"></td>
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

