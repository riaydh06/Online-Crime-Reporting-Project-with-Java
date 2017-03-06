<%@page import="hibernate.RegistrationTable"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="myTag" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <nav class="navbar navbar-inverse">
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
                          <li class=""><a href=".\Home.jsp">Home <span class="sr-only">(current)</span></a></li>
                          <li class="active"><a href="register.htm?name=index">Complain <span class="sr-only">(current)</span></a></li>
                          <li><a href="myComplain.htm">My Complain</a></li>
                        </ul>
                        <% ArrayList<RegistrationTable> info=(ArrayList<RegistrationTable>)session.getAttribute("data"); %>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="editProf.htm?name=null">Edit Profile</a></li>
                            <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hi <%=info.get(0).getName()  %> <span class="caret"></span></a>
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
                    <h3><%=session.getAttribute("uploadMsg") %></h3>
                    <%if(session.getAttribute("msg")==null){}else{%>
                    <h3 style="color: green"><%= session.getAttribute("msg")%></h3> 
                        <% session.setAttribute("msg",""); %>
                        <%}%>
                    <div class="page-header"> <h1>Register Complain</h1> </div>
                    
			<form action="uploadImage" method="post" id="place_complain" enctype="multipart/form-data">
                            <div class="row">
			         <div class="form-group col-md-3 col-md-offset-1">
			            <label for="title" class="">Title :<font color="#FF0000">*</font></label>
				</div>
				<div class="form-group col-md-8">
                                    <input required type="name" id="title" name="title_box" class="form-control" placeholder="Title" >
			       </div>
			    </div>
                            <div class="row">
			         <div class="form-group col-md-3 col-md-offset-1">
			            <label for="description" class="">Description :<font color="#FF0000">*</font></label>
				</div>
				<div class="form-group col-md-8">
                                    <textarea required type="text" rows="12" id="description" name="description_box" class="form-control"  placeholder="Type your complain here..." ></textarea>
			       </div>
			    </div>
                            <div class="row">
			        <div class="form-group col-md-3 col-md-offset-1">
			            <label for="venue" class="">Venue :<font color="#FF0000">*</font></label>
				</div>
				<div class="form-group col-md-8">
                                    <input required type="name" id="venue" name="venue_box" class="form-control" placeholder="Venue" >
			        </div>
			    </div>
                            <div class="row">
			        <div class="form-group col-md-3 col-md-offset-1">
			            <label for="image" class="">Upload Scenario :</label>
				</div>
				<div class="form-group col-md-8">
                                    <input type="file" id="image" name="img_box" class="form-control" >
			        </div>
			    </div>
                            <button type="submit" id="submit" class="btn btn-success btn-block">Submit</button>
                            
                        </form>	
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
    </html>
