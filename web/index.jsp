<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: xiaziyuan
  Date: 2019/2/27
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <h1>Module Assessment Collection</h1>
    <!-- <p>Module Assessment Data Collection System</p>-->
  </center>
</div>
<center>
<%-- user login form --%>
<%-- User Identity Verification --%>
  <div class="user_form" >
<%--    <div id="user_tab" class="user_tab j_userTab">
      <span id="user_cur" class="user_cur">User</span>
      <span>Administrator</span>
    </div>--%>
    <form action="login" method="get">
    <div id="login" class="user_login">
      <div class="user_input">
        <i class="iconfont">&#xe60d;</i>
        <%--<input name="username" type="text" placeholder="Please enter the username">--%>
        <input type="text" name="username" placeholder="Please enter the username">
      </div>
      <div class="user_input margin_bottom0">
        <i class="iconfont">&#xe6c6;</i>
        <%--<input name="password" type="password" placeholder="Please enter the password">--%>
        <input type="password" name="password" placeholder="Please enter the password">
      </div>
	  <%-- check whether the username is empty and show the error notation --%>
      <p class="user_err"><span>User name can not be empty</span></p>
      <p class="user_login_btn" >
        <input type="submit" class="button" style="background-color: #0f88eb; color: #ffffff; font-size: large" value="Login">
      </p>


      <p class="colWarning textCenter"></p>
    </div>
    </form>
    <div id="register" class="user_register" style="display: none;">
      <div class="user_input">
        <i class="iconfont">&#xe60d;</i>
        <input name="username" type="text" placeholder="Please enter the username">
      </div>
      <div class="user_input">
        <i class="iconfont">&#xe6c6;</i>
        <input name="password" type="password" placeholder="Please enter the password">
      </div>
      <p class="user_err"><span style="display: none">User name can not be empty</span></p>
      <p class="user_register_btn">login</p>
      <p class="colWarning textCenter"></p>
    </div>
  </div>
  <%-- friendly_link --%>
  <div class="friendly_link">
    <div class="user_tab">
      <span class="discuss_title">link</span>
    </div>
    <div class="link_item">
      <a href="https://www.sheffield.ac.uk/">Sheffield</a>
    </div>
  </div>
  <p class="copy_right">league of coder</p>
</center>
<%--<form action="login" method="get">--%>
  <%--用户名:<input type="text" name="username"><br>--%>
  <%--密码:<input type="password" name="password"><br>--%>
  <%--<input type="submit" onclick="" value="提交">--%>
<%--</form>--%>
<script src="js/main.js"></script>
</body>
</html>
