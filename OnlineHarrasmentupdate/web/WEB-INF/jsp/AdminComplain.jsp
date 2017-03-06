<%@page import="hibernate.RegistrationTable"%>
<%@page import="hibernate.ComplainTable"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Harassment  System </title>
        <link href="bootstrap.css" rel="stylesheet">
        <link href="signin.css" rel="stylesheet">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
      
       
        <div class="container">
            <div class="row">
                <div class="">
                  <a href="#" class="thumbnail">
                    <img src="img/banner.jpg" alt="...">
                  </a>
                </div>
            </div>
            <div class="row">
                <nav class="navbar navbar-inverse" >
                    <div class="container-fluid">
                      <!-- Brand and toggle get grouped for better mobile display -->
                      <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                          <span class="sr-only">Toggle navigation</span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">
                            <img alt="Brand" src="img/logo.gif">
                        </a>
                      </div>

                      <!-- Collect the nav links, forms, and other content for toggling -->
                      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            
                            <li class=""><a href="admin.htm">Admin page<span class="sr-only">(current)</span></a></li>
                           <li><a href="AdminComplain.htm">Admin Complain</a></li>
                
                        </ul>
                         <% ArrayList<RegistrationTable> info=(ArrayList<RegistrationTable>)session.getAttribute("data"); %> 
                        <ul class="nav navbar-nav navbar-right">
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hi <%=info.get(0).getName()  %><span class="caret"></span></a>
                            <ul class="dropdown-menu">
                              
                              <li><a href="logout">Logout</a></li>
                            </ul>
                          </li>
                        </ul>
                      </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                  </nav>
            </div>
            <div class="row ">     
	        <div class="col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2 form1 page label_title">	     
                    <div class="page-header"> <h1>My complain</h1> </div>
                    <div class="table-responsive">
                    <table class="table table-bordered">
                        <tr>
                            <th>Complain ID</th>
                            <th>Username</th>
                            <th>Complain Title</th>
                            <th>Venue</th>
                            <th>Status</th>
                            <th>Show Details</th>
                            <th>Delete Complain</th>
                        </tr>
                        <% ArrayList<ComplainTable> com = (ArrayList<ComplainTable>)session.getAttribute("complain"); %>
                        <tr>
                            <% for (int i = 0; i < com.size(); i++) {%>
                            <td><%= com.get(i).getComplainId()%></td> 
                            <td><%= com.get(i).getUsername()%></td>
                            <td><%= com.get(i).getComplainTitle()%></td> 
                            <td><%= com.get(i).getVenue()%></td>
                            <% if (com.get(i).getStatus().equals("Pending")) {%>
                                <td style="color: #c0a16b"><%= com.get(i).getStatus()%></td> 
                            <%} else {%>
                                <td style="color:green"><%= com.get(i).getStatus()%></td>
                            <%}%>

                            <td style="color:green"><a href="#<%= com.get(i).getComplainId() %>" data-toggle="modal" >Details</a></td>
                            <td style="color:green"><a href="deleteComplain.htm?ref=<%= com.get(i).getComplainId() %>">Delete</a></td>
                        </tr>
                        <%}%>  
                    </table>
                    </div>
                  <!-- /.Riad -->
                  
                  <!-- Large modal -->
                    
                   <% ArrayList<ComplainTable> Com = (ArrayList<ComplainTable>) session.getAttribute("complain"); %>
                             <% for (int i = 0; i < Com.size(); i++) {%>
                  <div class="modal fade bs-example-modal-lg" id="<%= com.get(i).getComplainId() %>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                         <div class="modal-header">
                             <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                             <div class=""> <h1><font color="Red">Complain Details</font></h1> </div>
                         </div>
                         <div class="modal-body">
                             <div class="col-md-12   page label_title">	            
                                 <div class="row">
                                     <div class="col-md-12">
                                         <h2><font color="green">Complain ID : <%= Com.get(i).getComplainId()%></font></h2>
                                         <h3><font color="green">Complain Title : <%= Com.get(i).getComplainTitle()%></font></h3>
                                         <h3><font color="green">Vanue : <%= Com.get(i).getVenue()%></font></h3>
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="col-md-4">
                                         <img class="img-responsive" src="./upload/<%= Com.get(i).getImageName()%>">
                                     </div>
                                     <div class="col-md-8">
                                         <p><%= Com.get(i).getComplainDescription()%></p>
                                     </div>
                                 </div>
                                 <div class="row">
                                     <div class="col-md-8">
                                         <h4><font color="green">Complain By : <%= Com.get(i).getUsername()%></font></h4>     
                                     </div>
                                     <div class="col-md-4">
                                         <% if (Com.get(i).getStatus().equals("Pending")) {%>
                                         <h4><font color="green">Status :</font><font color="red"><%= Com.get(i).getStatus()%></font></h4>  
                                             <%} else {%>  
                                         <h4><font color="green">Status :</font><font color="Yellow"><%= Com.get(i).getStatus()%></font></h4>  
                                          <%}%>
                                     </div>
                                 </div>
                                 

                             </div>
                         </div>
                         <div class="modal-footer">
                             <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                             
                         </div>
                        </div>
                      </div>
                    </div>
                    <%}%>  
                  <!-- /.riad -->
		  </div>
		 </div>
               
            <div class="row footer">               
                <div class="about col-md-8 col-lg-8">
                   <h6>For  information,<br> <a href="show.htm?name=Home">Home</a> . <a href="Contact.html">Contact</a>  </div>
                <div class="sociallink col-md-4 col-lg-4">
                    <ul>
                        <li> <a href=""><img class="img-responsive" src="img/g.jpg" alt=""/></a></li>
                        <li> <a href=""><img class="img-responsive" src="img/t.jpg" alt=""/></a></li>
                        <li> <a href=""><img class="img-responsive" src="img/f.jpg" alt=""/></a></li>

                    </ul>
                </div>
            </div>
	        
	</div>
            
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>
