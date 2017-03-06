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
            
            
            <div class="row ">     
                <div class="col-md-12  page label_title">	     
                    <div class="page-header"> <h1><font color="Red">Complain Details</font></h1> </div>
                    <% ArrayList<ComplainTable> com = (ArrayList<ComplainTable>)session.getAttribute("complain"); %>
                    <% for (int i = 0; i < com.size(); i++) {%>
                    <div class="row">
                        <div class="col-md-12">
                            <h2><font color="green">Complain ID : <%= com.get(i).getComplainId()%></font></h2>
                            <h3><font color="green">Complain Title : <%= com.get(i).getComplainTitle()%></font></h3>
                            <h3><font color="green">Vanue : <%= com.get(i).getVenue()%></font></h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <img class="img-responsive" src="./upload/<%= com.get(i).getImageName()%>">
                        </div>
                        <div class="col-md-8">
                            <p class="text-success text-justify"><%= com.get(i).getComplainDescription()%></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <h4><font color="green">Complain By : <%= com.get(i).getUsername()%></font></h4>     
                        </div>
                        <div class="col-md-4">
                            <% if (com.get(i).getStatus().equals("Pending")) {%>
                              <h4><font color="green">Status :</font><font color="red"><%= com.get(i).getStatus()%></font></h4>  
                            <%} else {%>  
                              <h4><font color="green">Status :</font><font color="Yellow"><%= com.get(i).getStatus()%></font></h4>  
                            <%}%>
                        </div>
                    </div>
                        <%}%>  
                    
                </div>
                
            </div>
               
            
	        
	</div>
            
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>
