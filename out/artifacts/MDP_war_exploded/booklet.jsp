<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="entity.Module" %>
<%@ page import="entity.Academic" %>
<%@ page import="entity.Assignment" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Lixiao
  Date: 2019/4/18
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
Module module;
module = (Module) session.getAttribute("module");
Set<Academic> lecturers = module.getAcademics();
Set<Assignment> assignments = module.getAssignments();
%>
<html>
<style>

</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<head>
    <title>Booklet</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css"/>
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <link href="css/util.css" rel="stylesheet" type="text/css">
    <script src="js/index.js"></script>
</head>
<body>
<div class="center">

</div>
</header>
<div class="jumbotron">
    <div id="u0" class="ax_default image">
        <img id="u0_img" class="img " src="images/sheffield.jpg"/>
    </div>
    <center>
        <h1>
            Methods of assessment
        </h1>
        <!-- <p>Module Assessment Data Collection System</p>-->
    </center>
</div>
<center>

    <tr>
        <td>
            <h1 style="font-size: 22px">
                Module:<%out.println(module.getModuleCode()+"("+module.getSemester()+")");%><br>
               </h1>
        </td>
    </tr>

<tr>
    <br>Lecturer: <%for(Academic acd:lecturers){
        out.println(acd.getName());
        out.println("<br>");
    };%><br>
    <br>
    <br>
    <%--print the data in the table--%>
    <td colspan="1">
        <div class="panel">
            <%--<div class="panel-header"><h4>Methods of assessment</h4></div>--%>
            <div class="panel-content">
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Type</th>
                        <th scope="col">Percentage</th>
                        <th scope="col">Start date</th>
                        <th scope="col">End date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% for (Assignment a:assignments){
                        out.println("<tr><td>"+a.getAssignmentID()+"</td>"+
                                "<td>"+a.getName()+"</td>"+
                                "<td>"+a.getFormat()+"</td>"+
                                "<td>"+a.getMarks()+"</td>"+
                                "<td>"+a.getStartTime()+"</td>"+
                                "<td>"+a.getEndTime()+"</td></tr>");
                    } %>

                    </tbody>
                </table>
            </div>
        </div>
    </td>
</tr>

<tr>
    <td colspan="1">&nbsp;

    </td>
</tr>

</body>
</html>
