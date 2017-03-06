<%@page import="inc.UserManage"%>
<%@page import="inc.loadComplain"%>
<%@page import="hibernate.ComplainTable"%>
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
                          <li class="active"><a href="admin.htm">Admin Page </a></li>
                           <li><a href="AdminComplain.htm">Admin Complain</a></li>
                        </ul>
                        <% ArrayList<RegistrationTable> info=(ArrayList<RegistrationTable>)session.getAttribute("data"); %>
                        <ul class="nav navbar-nav navbar-right">
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
		<br>
                <div class="col-md-3" >
                    <br>
                    <nav class="navbar navbar-default">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-3">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class=" collapse navbar-collapse" id="bs-example-navbar-collapse-3">
                            <ul class="nav nav-stacked">
                                <br>
                                <li class="active"><a class="list-group-item" href="#home">Home</a></li>
                                <li><a href="#1" class="list-group-item">Manage Complain</a></li>
                                <li><a href="#2" class="list-group-item ">Manage User</a>    </li>
                                <li><a href="#4" class="list-group-item">Edit Profile</a></li>
                                
                                <li><a href="#6" class="list-group-item">Add Complain</a></li>
                                <li><a href="#3" class="list-group-item "class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" >Setting</a>
                                     <ul class="dropdown-menu">
                              
                                       
                                     </ul>
                                </li>
                                   
                                <br>
                            </ul>
                        </div>
                    </nav>

                    <br>
                </div>
                <div class="col-md-9 " >
                    <div class="tab-content page label_title">
                        <div id="home" class="tab-pane fade in active">
                            <b><h1><font color="red"><center>Home</center></font></h1></b>
                            <b><h1><font color="red">Bulletins for Teens: Bullying and Harassment</font></h1></b>

                                    <ul>
                                        <li>What is it?</li>
                                        <li>If you are a victim of bullying</li>
                                        <li>Get Help</li>
                                        <li>Help Yourself</li>
                                        <li>Help Someone Else</li>
                                    </ul>
                                    <h2><font color="red">What is it?</font></h2>
                                    <p  class="text-success text-justify">
                                        Bullying is when one person hurts or threatens someone in their peer group. Anyone can be a bully, and bullying 
                                        can be carried out in different ways. Physical bullying may include shoving, pushing, and hitting. Words and
                                        non-verbal behavior can also be used to hurt someone by spreading rumors, taking part in gossip, or threatening
                                        someone with looks, notes, or pictures. Bullies may choose to pick on peers who are smaller or younger than 
                                        they are, or who are from a different race or culture, or they may pick on someone who is different in some other way</p>

                                    <p  class="text-success text-justify">Bullying might happen once or over and over again. If bullying includes physical or sexual harm or damage to</br>
                                        property, makes you feel intimidated or afraid to go to school, or disrupts the regular school day in a threatening 
                                        , it is probably also assault or harassment. These behaviors are against school rules and many are also 
                                        against the law. If a bully attacks you or steals something from you, you can report the incident to the police.
                                        You can also report school-related bullying to your school, and you should expect the school to take action to
                                        confront the behaviors, discipline the bully, and ensure your safety at school, traveling to and from school, and at 
                                        school activities. Check with an adult in your school to find out more about your rights.

                                    </p>
                                    <h2><font color="red">If You Are a Victim of Bullying, You Might:</font></h2>

                                    <ul>

                                        <li>Feel angry, sad, lonely, or depressed. </li>
                                        <li>Feel like you have no friends. </li>
                                        <li>Want to hurt someone else or yourself.</li>
                                        <li>Feel like taking steps to defend yourself. </li>
                                        <li>Feel helpless to stop the bullying. </li>
                                        <li>Feel hopeless that anything can be done.</li>
                                        <li>Feel bad about yourself </li>
                                        <li>Be afraid to go to school, or feel anxious all the time. </li>

                                    </ul>
                                    <h2><font color="red">Get Help</font></h2>
                                    <P  class="text-success text-justify">Being bullied is not your fault, and it is wrong. No matter what you say, how you look, or what you believe,</br>
                                        nothing gives anyone else the right to make fun of or hurt you.   </P>
                                    <ul>
                                        <li>Tell your parents and talk with them about how they can help you be safe.  </li>
                                        <li>Tell a teacher, counselor, or your school's principal. They can take action to stop the bullying. </li>
                                        <li>Most schools are required to have a policy on bullying. If you feel that nobody in your school is helping you,</br>
                                            find out what the policy is, and talk with the principal about how the policy applies to your case.   </li>
                                        <li>If there is no policy in your school, talk with friends, a teacher, or the principal about creating one. </li>

                                    </ul>
                                    <h2><font color="red">Help Yourself</font></h2>
                                    <p  class="text-success text-justify">You have a right to be safe. There is no one right way to respond to a bully. It is not your fault if a bully continues
                                        to pick on you. Do the best you can to cope with bullying while it is happening and get support from adults to
                                        help you stay safe and support you emotionally.</br>  </p>

                                    <h2><font color="red">Help Someone Else</font></h2>
                                    <p  class="text-success text-justify">If you see bullying happening in your school, you can help put a stop to it.</br></p>
                                    <ul>
                                        <li>Refuse to join in teasing someone. </li>
                                        <li>Get a teacher, parent, or another adult to come help. You won't be snitching; you'll be taking a stand against bullying. </li>
                                        <li>Talk to the person being bullied. Tell the person you want to help him or her, and encourage him or her to talk 
                                            to a supportive adult. Offer to go with the person. </li>
                                        <li>Report the bullying to an adult you trus </li>

                                    </ul>
                        </div>
                        <div id="1" class="tab-pane fade">
                            <h2><font color="red"><center>Manage Complain</center></font></h2>
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tr>
                                        <th>Complain ID</th>
                                        <th>Username</th>
                                        <th>Complain Title</th>
                                        <th>Venue</th>
                                        <th>Status</th>
                                        <th>Show Details</th>
                                        <th>Approve</th>
                                    </tr>
                                    <% ArrayList<ComplainTable> com = loadComplain.getComplain();%>
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
                                        <td style="color:green"><a href="#r<%= com.get(i).getComplainId() %>" data-toggle="modal" >Details</a></td>
                                        <td style="color:green"><a href="ApproveComplain.htm?ref=<%= com.get(i).getComplainId() %>">Approved</a></td>
                                    </tr>
                                    <%}%>  
                                </table>
                            </div>    
                                <% ArrayList<ComplainTable> Com = loadComplain.getComplain();%>%>
                                <% for (int i = 0; i < Com.size(); i++) {%>
                                <div class="modal fade bs-example-modal-lg" id="r<%= com.get(i).getComplainId()%>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
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
                        </div>
                        <div id="2" class="tab-pane fade">
                            
                            <div class=""><font color="red"><center> <h1> Manage User</h1><center></font> </div>
                            <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <th>User Name</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Mobile</th>
                                    <th>Address</th>
                                    <th>User Type</th>
                                    <th>Change User Type</th>
                                </tr>
                                <% ArrayList<RegistrationTable> user = UserManage.getUser();%>
                                <tr>
                                    <% for (int i = 0; i < user.size(); i++) {%>
                                    <td><%= user.get(i).getUsername()%></td> 
                                    <td><%= user.get(i).getName()%></td>
                                    <td><%= user.get(i).getEmail()%></td> 
                                    <td><%= user.get(i).getPassword()%></td>
                                    <td><%= user.get(i).getMobile()%></td> 
                                    <td><%= user.get(i).getAddress()%></td>
                                    <td><%= user.get(i).getUserType()%></td> 
                                    <td style="color:green"><a href="Changeusertype.htm?ref=<%= user.get(i).getUsername()%>">Change</a></td>
                                </tr>
                                <%}%>  
                            </table>
                            </div>
                        </div>
                        <div id="3" class="tab-pane fade">
                            <h1><font color="red"><center>Setting</center></font></h1>
                        </div>
                        <div id="4" class="tab-pane fade">
                            <div class="page-header">
                                <h1>Edit Profile</h1>
                                <%if (session.getAttribute("update") == null) {
                            } else {%>
                                <h4 id="msg"><%= session.getAttribute("update")%></h4> 
                                <% session.setAttribute("update", ""); %>
                                <%}%>
                            </div>

                            <% ArrayList<RegistrationTable> editInfo = (ArrayList<RegistrationTable>) session.getAttribute("data");%>

                            <form class="" action="editProf.htm?name=adminedit" method="post">
                                <div class="row">
                                    <div class="form-group col-md-3 col-md-offset-1">
                                        <label for="Name" class="">Name<font color="#FF0000">*</font></label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input required type="name" required="required" value="<%= editInfo.get(0).getName()%>" id="Name" name="name_box" class="form-control" placeholder="Name" >
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="form-group col-md-3 col-md-offset-1">
                                        <label for="Email" class="">Email<font color="#FF0000">*</font></label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="Email" id="Email" name="email_box" value="<%= editInfo.get(0).getEmail()%>" class="form-control" placeholder="Email" >
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-3 col-md-offset-1">
                                        <label for="Password" class="">Current Password<font color="#FF0000">*</font></label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="password" id="Password" required="required" name="current_password_box" class="form-control" placeholder="Password" >
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-3 col-md-offset-1">
                                        <label for="Password" class="">New Password<font color="#FF0000">*</font></label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="password" id="Password" required="required" name="new_password_box" class="form-control" placeholder="Password" >
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-3 col-md-offset-1">
                                        <label for="RePassword" class="">Re-type New Password<font color="#FF0000">*</font></label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="password" id="RePassword" name="renewpassword_box" class="form-control" placeholder="Re-Password" >
                                    </div>
                                </div> 
                                <div class="row">
                                    <div class="form-group col-md-3 col-md-offset-1">
                                        <label for="Cellphone_no" class="">Mobile<font color="#FF0000">*</font></label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="text" id="Cellphone_no" required="required" name="mobile_box" value="<%= editInfo.get(0).getMobile()%>" class="form-control" placeholder="Cellphone No." >
                                    </div>
                                </div> 

                                <div class="row">
                                    <div class="form-group col-md-3 col-md-offset-1">
                                        <label for="address"  class=""><i> Address:</i> </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <input type="text" id="address" name="address_box" value="<%= editInfo.get(0).getAddress()%>" class="form-control" placeholder="Address" >
                                    </div>
                                </div>




                                <button type="submit" class="btn btn-success btn-block">Update Profile</button>				
                            </form>
                        </div>
                        
                        <div id="6" class="tab-pane fade">
                            <h3><%=session.getAttribute("uploadMsg")%></h3>
                            <%if (session.getAttribute("msg") == null) {
                        } else {%>
                            <h3 style="color: green"><%= session.getAttribute("msg")%></h3> 
                            <% session.setAttribute("msg", ""); %>
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
        <script>
            $(document).ready(function(){
                $(".nav-stacked a").click(function(){
                    $(this).tab('show');
                });
            });
        </script>
    </body>
</html>
    </html>
