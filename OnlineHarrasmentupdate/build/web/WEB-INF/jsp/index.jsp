<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="myTag" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Harassment System </title>
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
                          <li><a href="#">Home <span class="sr-only">(current)</span></a></li>
       
                
                        </ul>
                        
                        <ul class="nav navbar-nav navbar-right">
                          <li><a href="registration.htm?name=Contact">Contact</a></li>
                          <li class="active"><a href="registration.htm?name=index">Login</a></li>
                          <li class=""><a href="registration.htm?name=Register">Register</a></li>
                          
                        </ul>
                      </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                  </nav>
            </div>
            <div class="row ">
                <div class="col-md-12">
                    <div class="col-md-8">

                    </div>
                    <div class="col-md-4 page label_title">
                        <%if (session.getAttribute("regmsg")==null) {
                            } else {%>
                            <h4 id="msg" style="color: green"><%= session.getAttribute("regmsg")%></h4> 
                        <% session.setAttribute("regmsg", ""); %>
                        <%}%>
                        
                       
                        
                        <form class="form-signin" action="loginServlet">
                            
                            <%if (session.getAttribute("error")==null) {
                            } else {%>
                            <h4 id="msg" style="color: red"><%= session.getAttribute("error")%></h4> 
                        <% session.setAttribute("error", ""); %>
                        <%}%>
                         
                          
                          <h2 class="form-signin-heading">Please sign in</h2>
                          <label for="inputEmail" class="sr-only">Email address</label>
                          <input type="text" id="inputEmail" class="form-control" placeholder="User Name" name="username" required="" autofocus="">
                          <label for="inputPassword" class="sr-only">Password</label>
                          <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required="">

                          <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                          <a href="registration.htm?name=Register">Not register yet !!!</a>

                        </form>
                       
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="thumbnail">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                              <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                              <li data-target="#carousel-example-generic" data-slide-to="4"></li>


                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                              <div class="item active">
                                <img src="img/1.jpg" alt="...">
                                <div class="carousel-caption">
                                  ...
                                </div>
                            </div>
                              <div class="item">
                                <img src="img/2.jpg" alt="...">
                                <div class="carousel-caption">
                                  ...
                                </div>
                              </div>
                              <div class="item">
                                <img src="img/3.jpg" alt="...">
                                <div class="carousel-caption">
                                  ...
                                </div>
                              </div>
                                <div class="item">
                                <img src="img/4.jpg" alt="...">
                                <div class="carousel-caption">
                                  ...
                                </div>
                              </div>
                                <div class="item">
                                <img src="img/5.jpg" alt="...">
                                <div class="carousel-caption">
                                  ...
                                </div>
                              </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                              <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                              <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row footer">               
                <div class="about col-md-8 col-lg-8">
                   <h6>For  information,<br> <a href="home1.html">Home</a> . <a href="Contact.html">Contact</a>  </div>
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
