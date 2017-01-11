package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class jobseekerlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body background=\"wallpaper.jpg\">\r\n");
      out.write("    \r\n");
      out.write("      ");

      
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseekerwebsite","root","");
        Statement st =con.createStatement();
        String EmailID="",Password="",EmailID1="", Password1="", Name = "";
        if(request.getParameter("submit")!=null)
                         {
            EmailID=request.getParameter("emailid");
            Password=request.getParameter("password");
            
             ResultSet rs =st.executeQuery("select * from user where emailid like '"+EmailID+"' and password like '"+Password+"'");
             
               while(rs.next()) {
            EmailID1=rs.getString("emailid");
            Password1=rs.getString("password");
            Name = rs.getString("name");
           }
            
            if (EmailID1.equals(EmailID) && Password1.equals(Password))
                               {
              session.setAttribute("EmailID",EmailID1);
              session.setAttribute("Name",Name);
              response.sendRedirect("jobseekerselectidpass.jsp");
                
                   
            }
            else
                               {
                
                out.print("<script>alert('Incorrect')  </script>");
            }
            
      
                  
            
            
        }
             
        
        
      out.write("\r\n");
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
      out.write("        <td><a href=\"#\">Job Seeker Zone</a></td>\r\n");
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
      out.write("<table class=\"table\" class=\"table-responsive\">\r\n");
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
      out.write("  <p style=\"background-color:#3CF; color:#000; padding:10px;\" align=\"center\">LOGIN <span style=\"font-family:Impact; background-color:#0CF; color:#FC6\"> NOW! </span></p>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("    <form name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("      <table width=\"500\" height=\"114\" border=\"0\" align=\"center\" class=\"table-responsive\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"98\" height=\"42\" ");
      out.write(" >Email ID:</td>\r\n");
      out.write("          <td width=\"329\"><label for=\"emailid\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"emailid\" id=\"emailid\"></td>\r\n");
      out.write("          <td width=\"51\">&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"32\">Password:</td>\r\n");
      out.write("          <td><label for=\"password\"></label>\r\n");
      out.write("          <input type=\"password\" name=\"password\" id=\"password\"></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><input type=\"submit\" name=\"submit\" id=\"submit\" value=\"Submit\"></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("    </form>\r\n");
      out.write("  \r\n");
      out.write("  </div>\r\n");
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
