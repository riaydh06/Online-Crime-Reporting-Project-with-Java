package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import hibernate.RegistrationTable;
import java.util.ArrayList;

public final class Complain_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online Harassment  System </title>\n");
      out.write("        <link href=\"bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"signin.css\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"\">\n");
      out.write("                  <a href=\"#\" class=\"thumbnail\">\n");
      out.write("                    <img src=\"img/banner.jpg\" alt=\"...\">\n");
      out.write("                  </a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <nav class=\"navbar navbar-inverse\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                      <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("                      <div class=\"navbar-header\">\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("                          <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                          <span class=\"icon-bar\"></span>\n");
      out.write("                          <span class=\"icon-bar\"></span>\n");
      out.write("                          <span class=\"icon-bar\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                            <img alt=\"Brand\" src=\"img/logo.gif\">\n");
      out.write("                        </a>\n");
      out.write("                      </div>\n");
      out.write("\n");
      out.write("                      <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                      <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                        <ul class=\"nav navbar-nav\">\n");
      out.write("                          <li class=\"\"><a href=\".\\Home.jsp\">Home <span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("                          <li class=\"active\"><a href=\"register.htm?name=index\">Complain <span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("                          <li><a href=\"myComplain.htm\">My Complain</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                        ");
 ArrayList<RegistrationTable> info=(ArrayList<RegistrationTable>)session.getAttribute("data"); 
      out.write("\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li><a href=\"editProf.htm?name=null\">Edit Profile</a></li>\n");
      out.write("                            <li class=\"dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Hi ");
      out.print(info.get(0).getName()  );
      out.write(" <span class=\"caret\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                              \n");
      out.write("                              \n");
      out.write("                              <li><a href=\"logout\">Logout</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                          </li>\n");
      out.write("                          \n");
      out.write("                          \n");
      out.write("                        </ul>\n");
      out.write("                      </div><!-- /.navbar-collapse -->\n");
      out.write("                    </div><!-- /.container-fluid -->\n");
      out.write("                  </nav>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row \">\n");
      out.write("\t\t     \n");
      out.write("\t        <div class=\"col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2 form1 page label_title\">\n");
      out.write("                    <h3>");
      out.print(session.getAttribute("uploadMsg") );
      out.write("</h3>\n");
      out.write("                    ");
if(session.getAttribute("msg")==null){}else{
      out.write("\n");
      out.write("                    <h3 style=\"color: green\">");
      out.print( session.getAttribute("msg"));
      out.write("</h3> \n");
      out.write("                        ");
 session.setAttribute("msg",""); 
      out.write("\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                    <div class=\"page-header\"> <h1>Register Complain</h1> </div>\n");
      out.write("                    \n");
      out.write("\t\t\t<form action=\"uploadImage\" method=\"post\" id=\"place_complain\" enctype=\"multipart/form-data\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("\t\t\t         <div class=\"form-group col-md-3 col-md-offset-1\">\n");
      out.write("\t\t\t            <label for=\"title\" class=\"\">Title :<font color=\"#FF0000\">*</font></label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group col-md-8\">\n");
      out.write("                                    <input required type=\"name\" id=\"title\" name=\"title_box\" class=\"form-control\" placeholder=\"Title\" >\n");
      out.write("\t\t\t       </div>\n");
      out.write("\t\t\t    </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("\t\t\t         <div class=\"form-group col-md-3 col-md-offset-1\">\n");
      out.write("\t\t\t            <label for=\"description\" class=\"\">Description :<font color=\"#FF0000\">*</font></label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group col-md-8\">\n");
      out.write("                                    <textarea required type=\"text\" rows=\"12\" id=\"description\" name=\"description_box\" class=\"form-control\"  placeholder=\"Type your complain here...\" ></textarea>\n");
      out.write("\t\t\t       </div>\n");
      out.write("\t\t\t    </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("\t\t\t        <div class=\"form-group col-md-3 col-md-offset-1\">\n");
      out.write("\t\t\t            <label for=\"venue\" class=\"\">Venue :<font color=\"#FF0000\">*</font></label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group col-md-8\">\n");
      out.write("                                    <input required type=\"name\" id=\"venue\" name=\"venue_box\" class=\"form-control\" placeholder=\"Venue\" >\n");
      out.write("\t\t\t        </div>\n");
      out.write("\t\t\t    </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("\t\t\t        <div class=\"form-group col-md-3 col-md-offset-1\">\n");
      out.write("\t\t\t            <label for=\"image\" class=\"\">Upload Scenario :</label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"form-group col-md-8\">\n");
      out.write("                                    <input type=\"file\" id=\"image\" name=\"img_box\" class=\"form-control\" >\n");
      out.write("\t\t\t        </div>\n");
      out.write("\t\t\t    </div>\n");
      out.write("                            <button type=\"submit\" id=\"submit\" class=\"btn btn-success btn-block\">Submit</button>\n");
      out.write("                            \n");
      out.write("                        </form>\t\n");
      out.write("\t\t  </div>\n");
      out.write("\t\t </div>\n");
      out.write("            \n");
      out.write("            <div class=\"row footer\">               \n");
      out.write("                <div class=\"about col-md-8 col-lg-8\">\n");
      out.write("                   <h6>For  information,<br> <a href=\"show.htm?name=Home\">Home</a> . <a href=\"Contact.html\">Contact</a>  </div>\n");
      out.write("                <div class=\"sociallink col-md-4 col-lg-4\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li> <a href=\"\"><img class=\"img-responsive\" src=\"img/g.jpg\" alt=\"\"/></a></li>\n");
      out.write("                        <li> <a href=\"\"><img class=\"img-responsive\" src=\"img/t.jpg\" alt=\"\"/></a></li>\n");
      out.write("                        <li> <a href=\"\"><img class=\"img-responsive\" src=\"img/f.jpg\" alt=\"\"/></a></li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\t\t   \n");
      out.write("\t</div>\n");
      out.write("            \n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("    </html>\n");
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
