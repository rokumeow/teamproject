<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: xiaziyuan
  Date: 2019/2/27
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<s:form action="login">
    <s:textfield name = "username"/>
    <s:textfield name="password"/>
    <s:submit key="login" value="submit" />
</s:form>
</body>
</html>
