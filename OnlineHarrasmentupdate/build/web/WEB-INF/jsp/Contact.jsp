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
                          <li class="active"><a href="registration.htm?name=Contact">Contact</a></li>
                          <li ><a href="registration.htm?name=index">Login</a></li>
                          <li class=""><a href="registration.htm?name=Register">Register</a></li>
                          
                        </ul>
                      </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                  </nav>
            </div>
            <div class="row ">
                <div class="col-md-12">
                    <div class="row page">
                        <div class="col-md-12">
                            <P  ><h1 class="text-primary text-justify">Welcome to the National Center for Victims of Crime<h1></P>

                        </div>
                        <div class="col-md-12">
                            <P  class="text-warning text-justify"> We are the nation's leading resource and advocacy organization for crime victims and those who serve them.
                                Please join us as we forge a national commitment to help victims of crime rebuild their lives. </P>

                        </div>
                    </div>
                    <div class="row" >
                        <div class="col-md-4" >
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
                                        <li><a href="#1" class="list-group-item">Option for Victims</a></li>
                                        <li><a href="#2" class="list-group-item">Victim's Rights</a></li>
                                        <li><a href="#3" class="list-group-item droppdown-toggle" data-toggle="dropdown"role="button" aria-expanded="false" >Bulletins for Teens</a>
                                            <ul class="dropdown-menu" role="menu"> 
                                                <li><a href="#4" class="list-group-item">Getting Help</a></li>
                                                <li><a href="#5" class="list-group-item">Information for friends of Teens</a></li>
                                                <li><a href="#6" class="list-group-item">Crime,Teens and Trauma</a></li>
                                                <li><a href="#7" class="list-group-item">Assult</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#9" class="list-group-item droppdown-toggle" data-toggle="dropdown"role="button" aria-expanded="false">Bullying and Harassment</a></li>
                                        <ul class="dropdown-menu" role="menu"> 
                                            <li><a href="#10" class="list-group-item">Child Sexual Abuse</a></li>
                                            <li><a href="#11" class="list-group-item">Sexual Assult</a></li>
                                            <li><a href="#12" class="list-group-item">Robbery and Property Crime</a></li>
                                            <li><a href="#13" class="list-group-item">Stalking</a></li>
                                        </ul>
                                        <li><a href="#1" class="list-group-item">When Youth is Victimized</a></li>
                                        <li><a href="#2" class="list-group-item">Assult</a></li>
                                        <li><a href="#3" class="list-group-item">Civil Justice for Victims of Crime</a></li>
                                        <li><a href="#4" class="list-group-item">Victims impact Statement</a>
                                        <li><a href="#menu1" class="list-group-item">Restitution</a></li>
                                        <li><a href="#menu2" class="list-group-item">How Crime Victims React to Trauuma</a></li>
                                        <li><a href="#menu3" class="list-group-item">Taruma of Victimization</a></li>
                                        <li><a href="#menu1" class="list-group-item">The Criminal Justice System</a></li>
                                        <li><a href="#menu2" class="list-group-item">What is a Victim Advocate?</a></li>
                                        <li><a href="#menu3" class="list-group-item">Commnity Victimization</a></li>
                                        <li><a href="#menu1" class="list-group-item">Grief:Coping with the Death of loved One Death</a></li>
                                        <br>
                                    </ul>
                                </div>
                            </nav>
                            <br>
                            <ul class="nav nav-stacked">
                                <li><a href="#" class="list-group-item">National Hotlines and Helpful Links</a></li>
                                <li><a href="#" class="list-group-item">Civil Litigation-National Crime Victim</br> Bar Assocition</a></li>
                                <li><a href="#" class="list-group-item">Coping with the Trauma and Grief</a></li>
                                <li><a href="#" class="list-group-item">Sexual Assult Awarness Month</a></li><br>
                            </ul>				 
                            <div class="list-group">
                                <a href="#" class="list-group-item active">
                                    <h4 class="list-group-item-heading">Help for Crime Victims</h4>
                                    <p class="list-group-item-text">Visit our Help for Crime Victims page to find local assistance and other helpful resources.</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-8 " >
                            <div class="tab-content page">
                                <div id="home" class="tab-pane fade in active">
                                    <b><h1><font color="red">Bulletins for Teens: Bullying and Harassment</font></h1></b>

                                    <ul>
                                        <li>What is it?</li>
                                        <li>If you are a victim of bullying</li>
                                        <li>Get Help</li>
                                        <li>Help Yourself</li>
                                        <li>Help Someone Else</li>
                                    </ul>
                                    <h2><font color="red">What is it?</font></h2>
                                    <p class="text-success text-justify">
                                        Bullying is when one person hurts or threatens someone in their peer group. Anyone can be a bully, and bullying
                                        can be carried out in different ways. Physical bullying may include shoving, pushing, and hitting. Words and
                                        non-verbal behavior can also be used to hurt someone by spreading rumors, taking part in gossip, or threatening
                                        someone with looks, notes, or pictures. Bullies may choose to pick on peers who are smaller or younger than
                                        they are, or who are from a different race or culture, or they may pick on someone who is different in some other way</p>

                                    <p class="text-success text-justify">Bullying might happen once or over and over again. If bullying includes physical or sexual harm or damage to
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
                                    <P class="text-success text-justify">Being bullied is not your fault, and it is wrong. No matter what you say, how you look, or what you believe,
                                        nothing gives anyone else the right to make fun of or hurt you.   </P>
                                    <ul>
                                        <li>Tell your parents and talk with them about how they can help you be safe.  </li>
                                        <li>Tell a teacher, counselor, or your school's principal. They can take action to stop the bullying. </li>
                                        <li>Most schools are required to have a policy on bullying. If you feel that nobody in your school is helping you,</br>
                                            find out what the policy is, and talk with the principal about how the policy applies to your case.   </li>
                                        <li>If there is no policy in your school, talk with friends, a teacher, or the principal about creating one. </li>

                                    </ul>
                                    <h2><font color="red">Help Yourself</font></h2>
                                    <p class="text-success text-justify">You have a right to be safe. There is no one right way to respond to a bully. It is not your fault if a bully continues
                                        to pick on you. Do the best you can to cope with bullying while it is happening and get support from adults to
                                        help you stay safe and support you emotionally.</br>  </p>

                                    <h2><font color="red">Help Someone Else</font></h2>
                                    <p class="text-success text-justify">If you see bullying happening in your school, you can help put a stop to it.</br></p>
                                    <ul>
                                        <li>Refuse to join in teasing someone. </li>
                                        <li>Get a teacher, parent, or another adult to come help. You won't be snitching; you'll be taking a stand against</br> bullying. </li>
                                        <li>Talk to the person being bullied. Tell the person you want to help him or her, and encourage him or her to talk</br> 
                                            to a supportive adult. Offer to go with the person. </li>
                                        <li>Report the bullying to an adult you trus </li>

                                    </ul>
                                </div>
                                <div id="1" class="tab-pane fade">
                                    <h3><font color="red"> Option for Victims</font></h3>
                                    <p class="text-success text-justify" >These Bulletins provide basic information on a wide range of crime victim topics to increase awareness of the consequences of victimization and the options and resources available to help victims.</p>
                                </div>
                                <div id="2" class="tab-pane fade">
                                    <b><h1><font color="red">Victim's Rights</font></h1></b>

                                    <ul>
                                        <li>What Are Victims' Rights?</li>
                                        <li>Who May Exercise Victims' Rights?</li>
                                        <li>Overview of Victims' Rights</li>
                                        <li>Resources</li>
                                    </ul>
                                    <h2><font color="red">What Are Victims' Rights?</font></h2>
                                    <p class="text-success text-justify">All states and the federal government have passed laws to establish a set of victims' rights. In general, these laws require that victims have certain information, protections, and a limited role in the criminal justice process. Victims' rights depend on the laws of the jurisdiction where the crime is investigated and prosecuted: state, federal or tribal government, or military installation.</p>
                                    <h2><font color="red">Who May Exercise Victims' Rights?</font></h2>
                                    <p class="text-success text-justify">A victim is usually defined as a person who has been directly harmed by a crime that was committed by another person. In some states, victims' rights apply only to victims of felonies (more serious crimes) while other states also grant legal rights to victims of misdemeanors (less serious crimes). Some states allow a family member of a homicide victim or the parent or guardian of a minor, incompetent person, or person with a disability to exercise these rights on behalf of the victims.</p>
                                    <h3><font color="red">Overview of Victims' Rights</font></h3>
                                    <p class="text-success text-justify">Below is a list of basic victims' rights provided by law in most jurisdictions. These rights vary, depending on federal, state, or tribal law.</p>
                                    <ol>
                                        <li><h4><font color="red">Right to Be Treated with Dignity, Respect, and Sensitivity</font></h4>
                                            <p class="text-success text-justify">Victims generally have the right to be treated with courtesy, fairness, and care by law enforcement and other officials throughout the entire criminal justice process. This right is included in the constitutions of most states that have victims' rights amendments and in the statutes of more than half the states.2 Victim impact statements allow crime victims, during the decision-making process on sentencing or parole, to describe to the court or parole board the impact of the crime on their lives. The victim impact statement may include a description of psychological, financial, physical, or emotional harm the victim experienced as a result of the crime. A judge may use information from these statements to help determine an offender's sentence; a parole board may use such information to help decide whether to grant a parole and what conditions to impose in releasing an offender. Many victims have reported that making victim impact statements improved their satisfaction with the criminal justice process and helped them recover from the crime.

                                                In some states, the prosecutor is required to confer with the victim before making important decisions. In all states, however, the prosecutor (and not the victim) makes decisions about the case.</p>
                                        </li>
                                        <li><h4><font color="red">Right to Be Informed</font></h4>
                                            <p class="text-success text-justify">The purpose of this right is to make sure that victims have the information they need to exercise their rights and to seek services and resources that are available to them. Victims generally have the right to receive information about victims' rights, victim compensation (see "Right to Apply for Compensation," below), available services and resources, how to contact criminal justice officials, and what to expect in the criminal justice system. Victims also usually have the right to receive notification of important events in their cases. Although state laws vary, most states require that victims receive notice of the following events:</p>
                                        </li>
                                        <li><h4><font color="red">Right to Protection</font></h4>
                                            <p class="text-success text-justify">In many states, victims have the right to protection from threats, intimidation, or retaliation during criminal proceedings. Depending on the jurisdiction, victims may receive the following types of protection:</p>
                                        </li>
                                    </ol>
                                </div>
                                <div id="3" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="4" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="5" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="6" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="7" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="8" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="9" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="10" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="11" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="12" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="13" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                                <div id="14" class="tab-pane fade">
                                    <h3>Menu 3</h3>
                                    <p class="text-success text-justify">Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                                </div>
                            </div>
                        </div>
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
