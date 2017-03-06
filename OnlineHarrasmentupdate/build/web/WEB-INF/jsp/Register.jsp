

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="myTag" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap.css" rel="stylesheet">
        <link href="signin.css" rel="stylesheet">
        <link href="./css/style.css" rel="stylesheet">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            .container{background:url("img/b.jpg") }
        </style>
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
                                <li class=""><a href="#">Home <span class="sr-only">(current)</span></a></li>


                            </ul>

                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="registration.htm?name=index">Contact</a></li>
                                <li class=""><a href="registration.htm?name=index">Login</a></li>
                                <li class="active"><a href="registration.htm?name=Register">Register</a></li>

                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
            <div class="row ">

                <div class="col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2 form1 page">

                    <div class="page-header">
                        <h1>Personal information</h1>
                        <%if (session.getAttribute("regmsg").equals("null")) {
                            } else {%>
                            <h4 id="msg"><%= session.getAttribute("regmsg")%></h4> 
                        <% session.setAttribute("regmsg", ""); %>
                        <%}%>
                    </div>
                    <form class="" action="registration.htm?name=null" method="post">
                        <div class="row">
                            <div class="form-group col-md-3 col-md-offset-1">
                                <label for="Name" class="">Name<font color="#FF0000">*</font></label>
                            </div>
                            <div class="form-group col-md-8">
                                <input required type="name" required="required" id="Name" name="name_box" class="form-control" placeholder="Name" >
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-3 col-md-offset-1">
                                <label for="Username" class="">User name<font color="#FF0000">*</font></label>
                            </div>
                            <div class="form-group col-md-8">
                                <input required type="name"required="required" id="Username" name="username_box" class="form-control" placeholder="Username" >
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3 col-md-offset-1">
                                <label for="Email" class="">Email<font color="#FF0000">*</font></label>
                            </div>
                            <div class="form-group col-md-8">
                                <input type="Email" id="Email" name="email_box" class="form-control" placeholder="Email" >
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3 col-md-offset-1">
                                <label for="Password" class="">Password<font color="#FF0000">*</font></label>
                            </div>
                            <div class="form-group col-md-8">
                                <input type="password" id="Password" required="required" name="password_box" class="form-control" placeholder="Password" >
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3 col-md-offset-1">
                                <label for="RePassword" class="">Re-Password<font color="#FF0000">*</font></label>
                            </div>
                            <div class="form-group col-md-8">
                                <input type="password" id="RePassword" name="repassword_box" class="form-control" placeholder="Re-Password" >
                            </div>
                        </div> 
                        <div class="row">
                            <div class="form-group col-md-3 col-md-offset-1">
                                <label for="Cellphone_no" class="">Mobile<font color="#FF0000">*</font></label>
                            </div>
                            <div class="form-group col-md-8">
                                <input type="text" id="Cellphone_no" required="required" name="mobile_box" class="form-control" placeholder="Cellphone No." >
                            </div>
                        </div> 

                        <div class="row">
                            <div class="form-group col-md-3 col-md-offset-1">
                                <label for="address"  class=""><i> Address:</i> </label>
                            </div>
                            <div class="form-group col-md-8">
                                <input type="text" id="address" name="address_box" class="form-control" placeholder="Address" >
                            </div>
                        </div>




                        <button type="submit" class="btn btn-success btn-block">Register</button>				
                    </form>	
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
        <script src="js/app.js"></script>

    </body>
</html>
</html>
