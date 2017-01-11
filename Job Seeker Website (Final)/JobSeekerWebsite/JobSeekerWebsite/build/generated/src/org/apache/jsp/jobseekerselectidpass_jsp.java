package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class jobseekerselectidpass_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("   <head>\r\n");
      out.write("  <title>Bootstrap Example</title>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/style.css\"/>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"jquery/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("      <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\r\n");
      out.write(" <style>\r\n");
      out.write(" \r\n");
      out.write(" .navbar{\r\n");
      out.write("\tbackground-color:#3CF;\t \r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t \r\n");
      out.write("\t }\r\n");
      out.write("\r\n");
      out.write("\t .navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus{\r\n");
      out.write("\tcolor: #000;\r\n");
      out.write("\tbackground-color: #FC6;\r\n");
      out.write("\t }\r\n");
      out.write(" .navbar-inverse .navbar-nav>.active>a:hover{\r\n");
      out.write("\t color:#F00;\r\n");
      out.write("\t background-color:#FFF;\r\n");
      out.write(" }\r\n");
      out.write(" \r\n");
      out.write(" .navbar-inverse .navbar-brand {\r\n");
      out.write("\tcolor:#000;\t \r\n");
      out.write(" }\r\n");
      out.write(" \r\n");
      out.write(" .navbar-inverse .navbar-nav>li>a {\r\n");
      out.write(" \tcolor:#000;\r\n");
      out.write(" }\r\n");
      out.write(" \r\n");
      out.write(" </style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("<body background=\"wallpaper.jpg\">\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("      ");

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
        
        
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<div class=\"container-fluid\" style=\"margin-left:70px; margin-right:70px\">\r\n");
      out.write("<div class=\"row\"> \r\n");
      out.write("\r\n");
      out.write("<div class=\"col-sm-12\" >\r\n");
      out.write("\r\n");
      out.write("<img src=\"jobseeker2.png\" class=\"img-responsive\" style=\"height:370px; width:1400px\"/>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container-fluid\" style=\"margin-left:70px; margin-right:70px\">\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-inverse\">\r\n");
      out.write("  <div class=\"container-fluid\">\r\n");
      out.write("    <div class=\"navbar-header\">\r\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\"><span style=\"font-family:Impact\">Job Seeker</span></a>\r\n");
      out.write("    </div>\r\n");
      out.write("    <ul class=\"nav navbar-nav\">\r\n");
      out.write("      <li><a href=\"Jobseeker.jsp\">Home</a></li>\r\n");
      out.write("      <li><a href=\"profile.html\">Profile</a></li>\r\n");
      out.write("      <li><a href=\"services.html\">Services</a></li>\r\n");
      out.write("        <li class=\"dropdown\">\r\n");
      out.write("        <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Registration\r\n");
      out.write("        <span class=\"caret\"></span></a>\r\n");
      out.write("        <ul class=\"dropdown-menu\" style=\"width:inherit\">\r\n");
      out.write("          <li><a href=\"login.jsp\">Job Seeker Zone</a></li>\r\n");
      out.write("          <li><a href=\"registrationemployer.jsp\">Employee Zone</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li><a href=\"contactus.jsp\">Contact Us</a></li>\r\n");
      out.write("      <li><a href=\"adminlogin.jsp\">Admin</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"container-fluid\" style=\"margin-left:70px; margin-right:70px\"> \r\n");
      out.write("\r\n");
      out.write("<div class=\"row\"> \r\n");
      out.write("\r\n");
      out.write("<div class=\"col-sm-3\" style=\"background-color:#EAEAEA; margin-bottom:0px; border:#B0B0B0 solid\">\r\n");
      out.write("\r\n");
      out.write("<table class=\"table\"  class=\"table-responsive\">\r\n");
      out.write("    <thead>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <th><span style=\"font-family:'Comic Sans MS', cursive; font-size:26px\"> Login</span></th>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </thead>\r\n");
      out.write("    <tbody>\r\n");
      out.write("      <tr>\r\n");
      out.write("      \r\n");
      out.write("        <td><a href=\"jobseekerlogin.jsp\">Job Seeker Zone</a></td>\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><a href=\"employerlogin.jsp\">Employer Zone</a></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </tbody>\r\n");
      out.write("  </table>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("<table class=\"table\"  class=\"table-responsive\">\r\n");
      out.write("  <thead>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <th><span style=\"font-family:'Comic Sans MS', cursive; font-size:26px\">News</span></th>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </thead>\r\n");
      out.write("    <tbody>\r\n");
      out.write("    </tbody>\r\n");
      out.write("  </table>\r\n");
      out.write("  \r\n");
      out.write("  <table class=\"table\"  class=\"table-responsive\">\r\n");
      out.write("    <thead>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <th><span style=\"font-family:'Comic Sans MS', cursive; font-size:26px\"> Best Consultant Zone</span></th>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </thead>\r\n");
      out.write("    <tbody>\r\n");
      out.write("      <tr>\r\n");
      out.write("      \r\n");
      out.write("        <td><a href=\"#\">California</a></td>\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><a href=\"#\">New Delhi</a></td> \r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><a href=\"#\">Indore</a></td> \r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><a href=\"#\">San Ramon</a></td> \r\n");
      out.write("      </tr>\r\n");
      out.write("    </tbody>\r\n");
      out.write("  </table>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"col-sm-8\">\r\n");
      out.write("  <p style=\"background-color:#3CF; color:#000; padding:10px;\" align=\"center\">CREATE <span style=\"font-family:Impact; background-color:#0CF; color:#FC6\"> ACCOUNT! </span></p>\r\n");
      out.write("\r\n");
      out.write("        <form name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("          <table width=\"381\" border=\"0\" align=\"center\" class=\"table-responsive\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"206\" height=\"49\">Username</td>\r\n");
      out.write("              <td width=\"165\"><label for=\"username\"></label>\r\n");
      out.write("              <input type=\"text\" name=\"username\" id=\"username\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"55\">Email ID</td>\r\n");
      out.write("              <td><label for=\"emailid\"></label>\r\n");
      out.write("              <input type=\"text\" name=\"emailid\" id=\"emailid\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"47\">Password</td>\r\n");
      out.write("              <td><label for=\"password\"></label>\r\n");
      out.write("              <input type=\"text\" name=\"password\" id=\"password\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"42\">Confirm Password</td>\r\n");
      out.write("              <td><label for=\"confirmpass\"></label>\r\n");
      out.write("              <input type=\"text\" name=\"confirmpass\" id=\"confirmpass\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"62\">&nbsp;</td>\r\n");
      out.write("              <td>Personal Details</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"46\">Full Name</td>\r\n");
      out.write("              <td><label for=\"fullname\"></label>\r\n");
      out.write("              <input type=\"text\" name=\"fullname\" id=\"fullname\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"36\">Date Of Birth (dd/mm/yyyy)</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"dd\" id=\"dd\">\r\n");
      out.write("                </select>\r\n");
      out.write("                <label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"mm\" id=\"dob\">\r\n");
      out.write("                </select>\r\n");
      out.write("                <label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"yyyy\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"51\">Gender</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"gender\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"47\">Martial Status</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"martialstatus\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"45\">Address</td>\r\n");
      out.write("              <td><label for=\"address\"></label>\r\n");
      out.write("              <input type=\"text\" name=\"address\" id=\"address\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"53\">State</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"state\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"52\">City</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"city\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"38\">Phone Number</td>\r\n");
      out.write("              <td><label for=\"phonenumber\"></label>\r\n");
      out.write("              <input type=\"text\" name=\"phonenumber\" id=\"phonenumber\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"50\">Mobile Number</td>\r\n");
      out.write("              <td><label for=\"university\"></label>\r\n");
      out.write("              <input type=\"text\" name=\"mobilenumber\" id=\"username9\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"42\">Current Location</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"currlocation\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"47\">&nbsp;</td>\r\n");
      out.write("              <td>Educational Details</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"52\">Graduation</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"graduation\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td><p>\r\n");
      out.write("                <label>\r\n");
      out.write("                  <input type=\"radio\" name=\"schooltime\" value=\"fulltime\" id=\"schooltime_0\">\r\n");
      out.write("                  Full Time</label>\r\n");
      out.write("                <br>\r\n");
      out.write("                <label>\r\n");
      out.write("                  <input type=\"radio\" name=\"schooltime\" value=\"parttime\" id=\"schooltime_1\">\r\n");
      out.write("                  Part Time</label>\r\n");
      out.write("                <br>\r\n");
      out.write("                <label>\r\n");
      out.write("                  <input type=\"radio\" name=\"schooltime\" value=\"cd\" id=\"schooltime_2\">\r\n");
      out.write("                  Correspondance/Distance</label>\r\n");
      out.write("                <br>\r\n");
      out.write("              </p></td>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"43\">Stream</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"stream\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"43\">Year</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"year\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"53\">University</td>\r\n");
      out.write("              <td><input type=\"text\" name=\"university\" id=\"username8\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"50\">Post Graduation</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"postgrad\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td><p>\r\n");
      out.write("                <label>\r\n");
      out.write("                  <input type=\"radio\" name=\"schooltime2\" value=\"fulltime\" id=\"schooltime_0\">\r\n");
      out.write("                  Full Time</label>\r\n");
      out.write("                <br>\r\n");
      out.write("                <label>\r\n");
      out.write("                  <input type=\"radio\" name=\"schooltime\" value=\"parttime\" id=\"schooltime_1\">\r\n");
      out.write("                  Part Time</label>\r\n");
      out.write("                <br>\r\n");
      out.write("                <label>\r\n");
      out.write("                  <input type=\"radio\" name=\"schooltime\" value=\"cd\" id=\"schooltime_2\">\r\n");
      out.write("                  Correspondance/Distance</label>\r\n");
      out.write("                <br>\r\n");
      out.write("              </p></td>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"44\">Stream</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"stream2\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"50\">University</td>\r\n");
      out.write("              <td><input type=\"text\" name=\"university2\" id=\"university2\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"54\">Passing Year</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"passyear\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"40\">&nbsp;</td>\r\n");
      out.write("              <td>Resume Summary</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"50\">Resume Headline</td>\r\n");
      out.write("              <td><input type=\"text\" name=\"resumeheadline\" id=\"resumeheadline\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"53\">Work Experience</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"workexperience\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"54\">Key Skills</td>\r\n");
      out.write("              <td><input type=\"text\" name=\"keyskills\" id=\"keyskills\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"44\">Industry</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"industry\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"50\">Functional Area</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"functionalarea\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"40\">Previous Employer</td>\r\n");
      out.write("              <td><input type=\"text\" name=\"previousemployer\" id=\"previousemployer\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"57\">Current Organization</td>\r\n");
      out.write("              <td><input type=\"text\" name=\"currorganization\" id=\"currorganization\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"53\">Job Profile</td>\r\n");
      out.write("              <td><input type=\"text\" name=\"jobprofile\" id=\"jobprofile\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"48\">Current Location</td>\r\n");
      out.write("              <td><label for=\"dd\"></label>\r\n");
      out.write("                <select name=\"currlocation\" id=\"dob\">\r\n");
      out.write("              </select></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td><input type=\"submit\" name=\"submit\" id=\"submit\" value=\"Submit\"></td>\r\n");
      out.write("              <td>&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("        </form>\r\n");
      out.write(" </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  </div>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <div class=\"container-fluid\" style=\"border:#FFF\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"col-sm-6\" style=\"background:#666\">\r\n");
      out.write("<h3 align=\"left\" style=\"font-family:'Times New Roman', Times, serif\"> ©2016 by JOB SEEKER CONSULTANTS PVT LTD </h3>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-sm-6\" style=\"background:#666\">\r\n");
      out.write("<h3 align=\"right\" style=\"font-family:'Times New Roman', Times, serif\"> Developed by Shiv Kushwah </h3>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
