package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class contactus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("  <title>Bootstrap Example</title>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/style.css\"/>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"jquery/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
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
      out.write("\r\n");
      out.write("<body background=\"wallpaper.jpg\">\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    ");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseekerwebsite","root","");
        Statement st =con.createStatement();
        String FName="",LName="",Email="",Phone="", Address="", City="", State="", Postcode="", Country="", Subject="", Other="", Suggestions="";
        if(request.getParameter("Submit")!=null)
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
             out.print("<script>alert('Record is Saved')   </script>");
            
            
        }
     
        
        
      out.write("\r\n");
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
      out.write("          <li><a href=\"registrationemployer.jsp\">Employer Zone</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"active\"><a href=\"#\">Contact Us</a></li>\r\n");
      out.write("      <li><a href=\"adminlogin.jsp\">Admin</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<marquee> <span style=\"font-size:24px; font-family:'Palatino Linotype', 'Book Antiqua', Palatino, serif\"> Welcome! </span> </marquee>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container-fluid\" style=\"margin-left:70px; margin-right:70px\"> \r\n");
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
      out.write("  <p style=\"background-color:#3CF; color:#000; padding:10px;\" align=\"center\">CONTACT<span style=\"font-family: Impact; color: #FC6; background-color: #0CF\"> </span><span style=\"font-family:Impact; background-color:#0CF; color:#FC6\"> US </span></p>\r\n");
      out.write("  \r\n");
      out.write("    <form name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("      <table width=\"520\" border=\"0\" align=\"center\" class=\"table-responsive\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"249\" height=\"48\">First Name</td>\r\n");
      out.write("          <td width=\"255\"><label for=\"fname\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"fname\" id=\"fname\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"59\">Last Name</td>\r\n");
      out.write("          <td><label for=\"lname\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"lname\" id=\"lname\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"38\">Email</td>\r\n");
      out.write("          <td><label for=\"email\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"email\" id=\"email\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"46\">Phone</td>\r\n");
      out.write("          <td><label for=\"phone\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"phone\" id=\"phone\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"38\">Address</td>\r\n");
      out.write("          <td><label for=\"address\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"address\" id=\"address\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"43\">City</td>\r\n");
      out.write("          <td><label for=\"fname6\"></label>\r\n");
      out.write("            <label for=\"city\"></label>\r\n");
      out.write("            <select name=\"city\" id=\"city\">\r\n");
      out.write("          </select></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"45\">State</td>\r\n");
      out.write("          <td><label for=\"fname7\"></label>\r\n");
      out.write("            <label for=\"city\"></label>\r\n");
      out.write("            <select name=\"state\" id=\"city\">\r\n");
      out.write("          </select></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"39\">Postal Code</td>\r\n");
      out.write("          <td><label for=\"postcode\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"postcode\" id=\"postcode\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"34\">Country</td>\r\n");
      out.write("          <td><label for=\"fname9\"></label>\r\n");
      out.write("            <label for=\"city\"></label>\r\n");
      out.write("            <select name=\"country\" id=\"city\">\r\n");
      out.write("          </select></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"52\">Subject</td>\r\n");
      out.write("          <td><label for=\"subject\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"subject\" id=\"subject\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"40\">Other</td>\r\n");
      out.write("          <td><label for=\"other\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"other\" id=\"other\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"33\">Suggestions</td>\r\n");
      out.write("          <td><label for=\"suggestions\"></label>\r\n");
      out.write("          <input type=\"text\" name=\"suggestions\" id=\"suggestions\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td height=\"41\"><input type=\"submit\" name=\"submit\" id=\"submit\" value=\"Submit\"></td>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("    </form>\r\n");
      out.write("</div>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("       <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"container-fluid\" style=\"border:#FFF\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"col-sm-6\" style=\"background:#666\">\r\n");
      out.write("<h3 align=\"left\" style=\"font-family:'Times New Roman', Times, serif\">Â©2016 by JOB SEEKER CONSULTANTS PVT LTD </h3>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"col-sm-6\" style=\"background:#666\">\r\n");
      out.write("<h3 align=\"right\" style=\"font-family:'Times New Roman', Times, serif\"> Developed by Shiv Kushwah </h3>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
