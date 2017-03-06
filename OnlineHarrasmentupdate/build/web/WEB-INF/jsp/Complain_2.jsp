<%-- 
    Document   : Complain
    Created on : Feb 19, 2017, 3:07:04 PM
    Author     : Rinku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complain Page</title>
        <link href="./css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <section id="complains_section">
            <h1>Register Complain</h1>
            
            <form action="register.htm?name=null" method="post" id="place_complain">
                <p><label for="title">Title :</label>
                    <input type="text" name="title_box" value="" id="title"/></p>
                <P><label for="description">Description :</label>
                <P><textarea id="description"  name="description_box">Type your complain here...</textarea></P>
                <p><label for="venue">Venue :</label>
                    <input type="text" name="venue_box" value="" id="venue"/></p>
                
                <p>
                    <label for="image">Upload Scenario :</label>
                    <input type="file" name="img_box" value="" id="image"/>
                </p>
                <input type="submit" id="submit" value="Submit"/>
            </form>
            
            <%if(session.getAttribute("msg").equals("null")){}else{%>
                <h1><%= session.getAttribute("msg")%></h1> 
                <% session.setAttribute("msg",""); %>
            <%}%>
            
            
                
            
             
        </section>
        
    </body>
</html>
