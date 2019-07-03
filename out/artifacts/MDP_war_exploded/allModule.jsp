<%@ page import="entity.Academic" %>
<%@ page import="java.util.Set" %>
<%@ page import="entity.Module" %><%--
  Created by IntelliJ IDEA.
  User: xiaziyuan
  Date: 2019/4/15
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%Set<Module> mds = (Set<Module>) session.getAttribute("allModule");%>
<% int i = 0; %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Module assignment system</title>

    <!-- <script src="/public/js/jquery-1.8.3.min.js"></script>-->
    <!--    <script src="/public/js/bootstrap.js"></script>-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css"/>
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <link href="css/util.css" rel="stylesheet" type="text/css">
    <script src="js/index.js"></script>
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
<div class="jumbotron">
    <div id="u0" class="ax_default image">
        <img id="u0_img" class="img " src="images/sheffield.jpg"/>
    </div>
    <center>
        <h1>MY MODULE</h1>
        <!-- <p>Module Assessment Data Collection System</p>-->
    </center>
</div>

<div class="container">
    <CENTER>
        <%--<% for(Module m: mds){--%>
        <%--String str = m.getModuleCode()+" "+m.getSemester();--%>
        <%--out.println("<p style=\"font-size:x-large\"");--%>
        <%--out.println("<form action=\"validate\" method=\"get\">");--%>
        <%--out.println("<input type =\"hidden\" value = \""+m.getModuleCode()+"\" name = \"moduleCode\">");--%>
        <%--out.println("<input type =\"hidden\" value = \""+m.getSemester()+"\" name = \"moduleSemester\">"+"<br>");--%>
        <%--out.println(str+"&nbsp;&nbsp;&nbsp;"+"<input type = \"submit\" class=\"btn btn-secondary\" value = enter style=\"font-size:x-large\">");--%>
        <%--out.print("</form>"+"</p>");--%>
        <%--} %>--%>
        <%
            for(Module m: mds){
            String str = m.getModuleCode()+" "+m.getSemester();
            out.println("<form action=\"bklt\" method=\"get\">");
            out.println("<p style=\"font-size:x-large\">"+"<input type =\"hidden\" value = \""+m.getModuleCode()+"\" name = \"moduleCode\">");
            out.println("<input type =\"hidden\" value = \""+m.getSemester()+"\" name = \"moduleSemester\">");
            out.println(str+"&nbsp;&nbsp;&nbsp;"+"<input type = \"submit\" class=\"btn btn-secondary\" value = enter style=\"font-size:x-large\">");
            out.print("</form>");
        } %>

    </CENTER>
</div>




</form>
</body>
</html>
