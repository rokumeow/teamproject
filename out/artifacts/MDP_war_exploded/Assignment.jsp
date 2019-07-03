<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="html" uri="/struts-tags" %>
<%@ page import="entity.Academic" %>
<%@ page import="java.util.Set" %>
<%@ page import="entity.Assignment" %>
<%@ page import="entity.Module" %><%--
  Created by IntelliJ IDEA.
  User: xiaziyuan
  Date: 2019/2/27
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%Academic academic = (Academic) session.getAttribute("ac");%>
<%String lecturer = academic.getName();%>
<%Module module = (Module) session.getAttribute("module");%>
<%Set<Assignment> assignments = module.getAssignments();%>

<script type="text/javascript">
    var message = "${requestScope.message}";
    if (message != "") {
        alert(message);
    }
</script>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- <script src="/public/js/jquery-1.8.3.min.js"></script>-->
    <!--    <script src="/public/js/bootstrap.js"></script>-->
    <script src="js/jquery-3.4.0.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>



    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/moment.js"></script>

    <script type="text/javascript" src="js/transition.js"></script>
    <script type="text/javascript" src="css/bootstrap-spinner.css"></script>
    <script type="text/javascript" src="js/bootstrap-collapse.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
    <script src="js/index.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css"/>
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <link href="css/util.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />

    <link rel="stylesheet" href="/public/css/bootstrap-datetimepicker.min.css" />
    <script type="text/javascript" src="/public/js/jquery.js"></script>
    <script type="text/javascript" src="/public/js/moment.js"></script>
    <script type="text/javascript" src="/public/js/transition.js"></script>
    <script type="text/javascript" src="/public/css/bootstrap-spinner.css"></script>
    <script type="text/javascript" src="/public/js/bootstrap-collapse.js"></script>
    <script type="text/javascript" src="/public/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/public/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/public/js/index.js"></script>



    <title>Module Assignment Collection</title>
    <script src="/programmeregulationsfinder/resources/scripts/jquery-1.9.1.js"></script>
    <%--<script src="/programmeregulationsfinder/resources/scripts/jquery-1.9.1.js"></script>--%>
    <script src="/app-assets/media/html5/js/jquery-ui-1.8.17.custom.min.js"></script>
    <script src="/app-assets/media/html5/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<header>
    <!--<div class="backimg"><img src="/public/images/background.jpg"/></div>-->
    <!--    <div class="logo"><span></span><img src="/public/images/icon.png"/></div>-->
    <div class="center">
        <!--        <a class="head_logo" href="javascript:void(0);">
                    <img src="/public/images/logo.png" alt="" />
                </a>-->

    </div>
</header>
<%--Lecturer:<%out.println(lecturer);%><br>--%>
<%--<tr>--%>
    <%--<td colspan="1">--%>
        <%--<div class="panel">--%>
            <%--<div class="panel-header"><h4>Methods of assessment</h4></div>--%>
            <%--<div class="panel-content">--%>
                <%--<table class="table">--%>
                    <%--<thead class="thead-dark">--%>
                    <%--<tr>--%>
                        <%--<th scope="col">ID</th>--%>
                        <%--<th scope="col">Name</th>--%>
                        <%--<th scope="col">Type</th>--%>
                        <%--<th scope="col">Percentage</th>--%>
                        <%--<th scope="col">Start date</th>--%>
                        <%--<th scope="col">End date</th>--%>
                    <%--</tr>--%>
                    <%--</thead>--%>
                    <%--<tbody>--%>
                    <%--<% for (Assignment a:assignments){--%>
                    <%--out.println("<tr><td>"+a.getAssignmentID()+"</td>"+--%>
                    <%--"<td>"+a.getName()+"</td>"+--%>
                    <%--"<td>"+a.getFormat()+"</td>"+--%>
                    <%--"<td>"+a.getMarks()+"</td>"+--%>
                    <%--"<td>"+a.getStartTime()+"</td>"+--%>
                    <%--"<td>"+a.getEndTime()+"</td></tr>");--%>
                    <%--} %>--%>

                    <%--</tbody>--%>
                <%--</table>--%>

            <%--</div>--%>
        <%--</div>--%>
    <%--</td>--%>
<%--</tr>--%>

<%--<tr>--%>
    <%--<td colspan="1">&nbsp;--%>

    <%--</td>--%>
<%--</tr>--%>
<div class="jumbotron">
    <div id="u0" class="ax_default image">
        <img id="u0_img" class="img " src="images/sheffield.jpg"/>
    </div>


    <div id="u1" class="ax_default sticky_2">
        <div id="u1_div" class=""></div>
    </div>

    <div id="u3" class="ax_default sticky_2">
        <div id="u3_div" class=""></div>
    </div>


    <div id="u16" class="ax_default sticky_2">
        <div id="u16_div" class=""></div>
    </div>
    <center>
        <h1>Module Assessment Collection</h1>
        <h5 style="font-size: 28px"><%out.println("Welcome, "+academic.getName());%></h5>
        <form action="yahaha" method="get">
            <input type="submit" onclick="" style="color: #2aabd2; font-size:20px; background-color: transparent" value="view booklet">
        </form>
        <form action="tml" method="get">
            <input type="submit" onclick="" style="color: #2aabd2; font-size:20px;background-color: transparent" value="view timeline">
        </form>

        <!-- <p>Module Assessment Data Collection System</p>-->
    </center>
</div>

<div class="col-xs-6 col-md-4 col-center-block">
    <center>


        <div class="panel panel-primary" style="font-size: 20px;">
            <div class="panel-heading">Module Assessment Information</div><br><br>






















			<%--Module Assessment Submission and Modification Form--%>
			<%--Academics can add, update or delete the assessment information through this web page--%>
            <div class="user_form" >
			<%--this is the user tab to switch from submission form to the modification form--%>
                <div id="user_tab" class="user_tab j_userTab">
                    <span id="user_cur" class="user_cur">Add</span>
                    <span>Update</span>
                </div>

                <div id="login" class="user_login">
                    <form action="save" method="get">

                        <div class="panel-body">
                            <div class="input-group">
      <span class="input-group-btn">
        <button class="btn btn-default form-control" type="button">Assignment Name</button>
      </span>
                                <input type="text" name="asName" class="form-control"  placeholder="Assignment Name" height: 30px style="font-size: 20px;">
                            </div><!-- /input-group --><br>

                            <div class="input-group">
							<%--Module Assessment Submission--%>
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">Assignment Format</button>
      </span>
                                <select class="form-control" name="asFormat" style="font-size:20px ">
                                    <option value="1" selected disabled style="display: none;">Assessment Format</option>
                                    <option disabled>--Please Choose--</option>
                                    <option value="Assignment">Assignment</option>
                                    <option value="MOLE quiz">MOLE quiz</option>
                                    <option value="Exercise/problem sheet">Exercise/problem sheet</option>
                                    <option value="Individual performance">Individual performance</option>
                                    <option value="Time Keeping">Time Keeping</option>
                                    <option value="Formal Exam">Formal Exam</option>
                                    <option value="Assessed lab">Assessed lab</option>
                                    <option value="Portfolio">Portfolio</option>
                                    <option value="Group Systems Design Project">Group Systems Design Project</option>
                                    <option value="Individual Testing Report">Individual Testing Report</option>
                                    <option value="Formal Exam">Formal Exam</option>
                                </select>
                                <%--<input type="text" class="form-control" name="asFormat" placeholder="Assignment Format">--%>
                            </div><!-- /input-group -->


                            <div class="control-group">
                                <label class="control-label"> </label>
								<%--Datepicker component for choosing the time in the calendar--%>
                                <div class="form-group">
                                    <div class='input-group date' id='datetimeStart'>
                                          <span class="input-group-btn">
        <button class="btn btn-default" type="button">Start Date</button>
      </span>
                                        <input type='text' name="asStTime" class="form-control" placeholder="Start Time" style="font-size: 20px"/>

                                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                                    </div><br>

                                    <div class='input-group date' id='datetimeEnd'>
                                    <span class="input-group-btn">
        <button class="btn btn-default" type="button">End  Date</button>
      </span>
                                        <input type='text'  name="asEndTime" class="form-control" placeholder="End Time" style="font-size: 20px"/>

                                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                                    </div>
                                </div>

								<%--initialise the datetimepicker and restrict the start date and the end date, disable the holiday from the calendar --%>
                                <!--  </div>-->
                                <script type="text/javascript">
                                    $(function () {
                                        $('#datetimeStart').datetimepicker('setDaysOfWeekDisabled', [0,6]);
                                        $('#datetimeStart').datetimepicker({
                                            format:'dd-mm-yyyy',
                                            weekStart: 1,
                                            todayBtn:  1,
                                            autoclose: 1,
                                            minView:2,
                                            pickerPosition: "bottom-left",
                                        }).on("changeDate",function(ev){
                                            //the chosen date should not be larger than the end date
                                            if(ev.date){
                                                $("#datetimeEnd").datetimepicker('setStartDate', new Date(ev.date.valueOf()));
                                            }else{
                                                $("#datetimeEnd").datetimepicker('setStartDate',null);
                                            }
                                        });
                                        $('#datetimeEnd').datetimepicker('setDaysOfWeekDisabled', [0,6]);
                                        $('#datetimeEnd').datetimepicker({
                                            format:'dd-mm-yyyy',
                                            weekStart: 1,
                                            todayBtn:  1,
                                            autoclose: 1,
                                            minView:2,
                                            pickerPosition: "bottom-left"
                                        }).on("changeDate",function(ev){
                                            $('#datetimeEnd').datetimepicker('setDaysOfWeekDisabled', [0,6]);
                                            // the chosen date should not be smaller than the start date
                                            if(ev.date){
                                                $("#datetimeStart").datetimepicker('setEndDate', new Date(ev.date.valueOf()));
                                            }else{
                                                $("#datetimeStart").datetimepicker('setEndDate',new Date());
                                            }
                                        });
                                    });
                                </script>
                                <!--      </div>
                                  </div>-->

								<%-- use a spinner component to choose the percentage of this module assessment--%>
                                <div class="input-group spinner">
                                    <!--                   <span class="input-group-btn" >
                                       <button class="btn btn-default" type="button">Percentage</button>
                                     </span>-->
                                    <span class="input-group-btn">
        <button class="btn btn-default" type="button">Percentage</button>
      </span>
                                    <input type="text" name="asMarks" class="form-control" value="50" style="width:250px;font-size: 18px" placeholder="Percentage" >
                                    <div class="input-group-btn-vertical">
                                        <button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>
                                        <button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>
                                    </div>
                                </div><br>



                                <div class="controls">
                                    <button class="btn btn-success" onclick=""><input type="submit" style=" color: #ffffff; background-color: transparent;font-size: 20px" value="Save" ></button>
                                </div>


                            </div>
                            <!-- <div class="panel-footer">Sheffield</div>-->
                        </div>




                        <p class="copy_right">league of coder</p>
                    </form>
                </div>

                <div id="register" class="user_register" style="display: none;">
                    <form action="update" method="get">

                        <div class="panel-body">





                            <div class="input-group">
							<%-- iterate the assessment and present them in the web page--%>
      <span class="input-group-btn">
        <button class="btn btn-default form-control" type="button">Assignment Name</button>
      </span>
                                <select class="form-control" name="asId" style="font-size: 20px">
                                    <option value="1" selected disabled style="display: none;">Assessment ID</option>
                                    <option disabled>--Please Choose--</option>
                                    <%for (Assignment i:assignments){
                                        out.println("<option value = "+i.getAssignmentID()+">"+i.getAssignmentID()+"</option>");
                                    }%>
                                </select>
                            </div><!-- /input-group --><br>






                            <div class="input-group">
      <span class="input-group-btn">
        <button class="btn btn-default form-control" type="button">Assignment Name</button>
      </span>
                                <input type="text" name="asName" class="form-control"  placeholder="Assignment Name" style="font-size: 20px">
                            </div><!-- /input-group --><br>

                            <div class="input-group">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">Assignment Format</button>
      </span>
                                <select class="form-control" name="asFormat" style="font-size: 20px">
                                    <option value="1" selected disabled style="display: none;">Assessment Format</option>
                                    <option disabled>--Please Choose--</option>
                                    <option value="Assignment">Assignment</option>
                                    <option value="MOLE quiz">MOLE quiz</option>
                                    <option value="Exercise/problem sheet">Exercise/problem sheet</option>
                                    <option value="Individual performance">Individual performance</option>
                                    <option value="Time Keeping">Time Keeping</option>
                                    <option value="Assessed lab">Assessed lab</option>
                                    <option value="Portfolio">Portfolio</option>
                                    <option value="Group Systems Design Project">Group Systems Design Project</option>
                                    <option value="Individual Testing Report">Individual Testing Report</option>
                                </select>
                                <%--<input type="text" class="form-control" name="asFormat" placeholder="Assignment Format">--%>
                            </div><!-- /input-group -->


                            <div class="control-group">
                                <label class="control-label"> </label>

                                <div class="form-group">
                                    <div class='input-group date' id='datetimeStart2'>
                                          <span class="input-group-btn">
        <button class="btn btn-default" type="button">Start Date</button>
      </span>
                                        <input type='text' name="asStTime" class="form-control" placeholder="Start Time" style="font-size: 20px"/>

                                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                                    </div><br>

                                    <div class='input-group date' id='datetimeEnd2'>
                                    <span class="input-group-btn">
        <button class="btn btn-default" type="button">End  Date</button>
      </span>
                                        <input type='text'  name="asEndTime" class="form-control" placeholder="End Time" style="font-size: 20px"/>

                                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                                    </div>
                                </div>

								<%--initialise the datetimepicker and restrict the start date and the end date, disable the holiday from the calendar --%>
                                <!--  </div>-->
                                <script type="text/javascript">
                                    $(function () {
                                        $('#datetimeStart2').datetimepicker({
                                            format:'dd-mm-yyyy',
                                            weekStart: 1,
                                            todayBtn:  1,
                                            autoclose: 1,
                                            minView:2,
                                            pickerPosition: "bottom-left"
                                        }).on("changeDate",function(ev){
                                            //the chosen date should not be larger than the end date
                                            if(ev.date){
                                                $("#datetimeEnd2").datetimepicker('setStartDate', new Date(ev.date.valueOf()));
                                            }else{
                                                $("#datetimeEnd2").datetimepicker('setStartDate',null);
                                            }
                                        });
                                        $('#datetimeEnd2').datetimepicker({
                                            format:'dd-mm-yyyy',
                                            weekStart: 1,
                                            todayBtn:  1,
                                            autoclose: 1,
                                            minView:2,
                                            pickerPosition: "bottom-left"
                                        }).on("changeDate",function(ev){
                                            // the chosen date should not be smaller than the start date
                                            if(ev.date){
                                                $("#datetimeStart2").datetimepicker('setEndDate', new Date(ev.date.valueOf()));
                                            }else{
                                                $("#datetimeStart2").datetimepicker('setEndDate',new Date());
                                            }
                                        });
                                    });
                                </script>
                                <!--      </div>
                                  </div>-->


                                <div class="input-group spinner">
                                    <!--                   <span class="input-group-btn" >
                                       <button class="btn btn-default" type="button">Percentage</button>
                                     </span>-->
                                    <span class="input-group-btn">
        <button class="btn btn-default" type="button">Percentage</button>
      </span>
                                    <input type="text" name="asMarks" class="form-control" value="50" style="width:250px;font-size: 18px" placeholder="Percentage">
                                    <div class="input-group-btn-vertical">
                                        <button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>
                                        <button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>
                                    </div>
                                </div><br>



                                <div class="controls">
                                    <button class="btn btn-success"><input type="submit" style="color: #ffffff; background-color: transparent;font-size: 20px" value="Update"></button>
                                </div>


                            </div>
                            <!-- <div class="panel-footer">Sheffield</div>-->
                        </div>

                    </form>
						<%-- iterate the assignments, delete the assignment according to the assessment ID --%>
                        <div class="friendly_link">
                            <div class="user_tab">
                                <span class="discuss_title">Delete</span>
                            </div>
                            <form action="delete.action" method="get">
                                <div class="input-group">
      <span class="input-group-btn">
        <button class="btn btn-default form-control" type="button">Assignment Name</button>
      </span>
                                    <select class="form-control" name="asId" style="font-size: 20px">
                                        <option value="1" selected disabled style="display: none;">Assessment ID</option>
                                        <option disabled>--Please Choose--</option>
                                        <%for (Assignment i:assignments){
                                            out.println("<option value = "+i.getAssignmentID()+">"+i.getAssignmentID()+"</option>");
                                        }%>
                                    </select>
                                </div><!-- /input-group --><br>
                                <div class="controls">
                                    <button class="btn btn-success"><input type="submit" style="color: #ffffff; background-color: transparent;font-size: 20px" value="Delete"></button>
                                </div>
                            </form>








                        </div>
                        <p class="copy_right">league of coder</p>

                </div>
            </div>
        </div>

            <%--<form action="save" method="get">--%>

            <%--<div class="panel-body">--%>
                <%--<div class="input-group">--%>
      <%--<span class="input-group-btn">--%>
        <%--<button class="btn btn-default form-control" type="button">Assignment Name</button>--%>
      <%--</span>--%>
                    <%--<input type="text" name="asName" class="form-control"  placeholder="Assignment Name">--%>
                <%--</div><!-- /input-group --><br>--%>

                <%--<div class="input-group">--%>
      <%--<span class="input-group-btn">--%>
        <%--<button class="btn btn-default" type="button">Assignment Format</button>--%>
      <%--</span>--%>
                    <%--<select class="form-control" name="asFormat">--%>
                        <%--<option value="1" selected disabled style="display: none;">Assessment Format</option>--%>
                        <%--<option disabled>--Please Choose--</option>--%>
                        <%--<option value="Assignment">Assignment</option>--%>
                        <%--<option value="MOLE quiz">MOLE quiz</option>--%>
                        <%--<option value="Exercise/problem sheet">Exercise/problem sheet</option>--%>
                        <%--<option value="Individual performance">Individual performance</option>--%>
                        <%--<option value="Time Keeping">Time Keeping</option>--%>
                        <%--<option value="Assessed lab">Assessed lab</option>--%>
                        <%--<option value="Portfolio">Portfolio</option>--%>
                        <%--<option value="Group Systems Design Project">Group Systems Design Project</option>--%>
                        <%--<option value="Individual Testing Report">Individual Testing Report</option>--%>
                    <%--</select>--%>
                    <%--&lt;%&ndash;<input type="text" class="form-control" name="asFormat" placeholder="Assignment Format">&ndash;%&gt;--%>
                <%--</div><!-- /input-group -->--%>


                <%--<div class="control-group">--%>
                    <%--<label class="control-label"> </label>--%>

                    <%--<div class="form-group">--%>
                        <%--<div class='input-group date' id='datetimeStart'>--%>
                                          <%--<span class="input-group-btn">--%>
        <%--<button class="btn btn-default" type="button">Start Date</button>--%>
      <%--</span>--%>
                            <%--<input type='text' name="asStTime" class="form-control" placeholder="Start Time"/>--%>

                            <%--<span class="input-group-addon">--%>
                        <%--<span class="glyphicon glyphicon-calendar"></span>--%>
                    <%--</span>--%>
                        <%--</div><br>--%>

                        <%--<div class='input-group date' id='datetimeEnd'>--%>
                                    <%--<span class="input-group-btn">--%>
        <%--<button class="btn btn-default" type="button">End  Date</button>--%>
      <%--</span>--%>
                            <%--<input type='text'  name="asEndTime" class="form-control" placeholder="End Time"/>--%>

                            <%--<span class="input-group-addon">--%>
                        <%--<span class="glyphicon glyphicon-calendar"></span>--%>
                    <%--</span>--%>
                        <%--</div>--%>
                    <%--</div>--%>


                    <%--<!--  </div>-->--%>
                    <%--<script type="text/javascript">--%>
                        <%--$(function () {--%>
                            <%--$('#datetimeStart').datetimepicker({--%>
                                <%--format:'yyyy-mm-dd',--%>
                                <%--weekStart: 1,--%>
                                <%--todayBtn:  1,--%>
                                <%--autoclose: 1,--%>
                                <%--minView:2,--%>
                                <%--pickerPosition: "bottom-left"--%>
                            <%--}).on("changeDate",function(ev){--%>
                                <%--//the chosen date should not be larger than the end date--%>
                                <%--if(ev.date){--%>
                                    <%--$("#datetimeEnd").datetimepicker('setStartDate', new Date(ev.date.valueOf()));--%>
                                <%--}else{--%>
                                    <%--$("#datetimeEnd").datetimepicker('setStartDate',null);--%>
                                <%--}--%>
                            <%--});--%>
                            <%--$('#datetimeEnd').datetimepicker({--%>
                                <%--format:'yyyy-mm-dd',--%>
                                <%--weekStart: 1,--%>
                                <%--todayBtn:  1,--%>
                                <%--autoclose: 1,--%>
                                <%--minView:2,--%>
                                <%--pickerPosition: "bottom-left"--%>
                            <%--}).on("changeDate",function(ev){--%>
                                <%--// the chosen date should not be smaller than the start date--%>
                                <%--if(ev.date){--%>
                                    <%--$("#datetimeStart").datetimepicker('setEndDate', new Date(ev.date.valueOf()));--%>
                                <%--}else{--%>
                                    <%--$("#datetimeStart").datetimepicker('setEndDate',new Date());--%>
                                <%--}--%>
                            <%--});--%>
                        <%--});--%>
                    <%--</script>--%>
                    <%--<!--      </div>--%>
                      <%--</div>-->--%>


                    <%--<div class="input-group spinner">--%>
                        <%--<!--                   <span class="input-group-btn" >--%>
                           <%--<button class="btn btn-default" type="button">Percentage</button>--%>
                         <%--</span>-->--%>
                        <%--<span class="input-group-btn">--%>
        <%--<button class="btn btn-default" type="button">Percentage</button>--%>
      <%--</span>--%>
                        <%--<input type="text" name="asMarks" class="form-control" value="50" style="width:250px" placeholder="Percentage">--%>
                        <%--<div class="input-group-btn-vertical">--%>
                            <%--<button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>--%>
                            <%--<button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>--%>
                        <%--</div>--%>
                    <%--</div><br>--%>



                    <%--<div class="controls">--%>
                        <%--<button class="btn btn-success"><input type="submit" style="color: #ffffff; background-color: transparent" value="Save"></button>--%>
                    <%--</div>--%>


                <%--</div>--%>
                <%--<!-- <div class="panel-footer">Sheffield</div>-->--%>
            <%--</div>--%>



        <%--<div class="friendly_link">--%>
                <%--<div class="user_tab">--%>
                    <%--<span class="discuss_title">link</span>--%>
                <%--</div>--%>
                <%--<div class="link_item">--%>
                    <%--<a href="https://www.sheffield.ac.uk/">Sheffield</a>--%>
                <%--</div>--%>
                <%--&lt;%&ndash;<form action="yahaha" method="get">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<input type="submit" onclick="" value="booklet">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</form>&ndash;%&gt;--%>
            <%--</div>--%>
            <%--<p class="copy_right">league of coder</p>--%>
            <%--</form>--%>
        </div>



    </center>


</div>

<script src="js/main.js"></script>


</body>
</html>
