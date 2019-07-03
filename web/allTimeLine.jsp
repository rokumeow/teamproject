<%@ page import="entity.Assignment"
         import="entity.Module"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.ParseException" %><%--
  Created by IntelliJ IDEA.
  User: Lixiao
  Date: 2019/4/20
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%Set<Assignment> assignments = (Set<Assignment>) session.getAttribute("allAssignments");%>
<% SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy"); %>
<% SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yy");%>
<% ArrayList list = new ArrayList();%>
<html>
<head>

    <meta charset="UTF-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sheffield Module Assessment Timeline</title>

    <meta name="description" content="Blueprint: Vertical Timeline" />

    <meta name="keywords" content="timeline, vertical, layout, style, component, web development, template, responsive" />

    <meta name="author" content="Codrops" />

    <%--<link rel="shortcut icon" href="fonts/favicon.ico">--%>

    <link rel="stylesheet" type="text/css" href="css/default.css" />

    <link rel="stylesheet" type="text/css" href="css/component.css" />

    <script src="js/modernizr.custom.js"></script>

</head>

<body>

<div class="container">

    <header class="clearfix">

        <span>Sheffield</span>

        <h1>Module Assessment Timeline</h1>



    </header>

    <div class="main">

        <ul class="cbp_tmtimeline">

            <%for (Assignment a:assignments){
                list.add(a);
            }%>
            <% Collections.sort(list, new Comparator() {
                @Override
                public int compare(Object o1, Object o2) {
                    Assignment a1 = (Assignment) o1;
                    Assignment a2 = (Assignment) o2;
                    Date a1Date = new Date();
                    Date a2Date = new Date();
                    try {
                        a1Date = df.parse(a1.getEndTime());
                    } catch (ParseException e) {
                        a1Date = null;
                    }

                    try {
                        a2Date = df.parse(a2.getEndTime());
                    } catch (ParseException e) {
                        a2Date = null;
                    }
                    if (a1Date.before(a2Date)) {
                        return 1;
                    } else if (a1Date.equals(a2Date)) {
                        return 0;
                    } else {
                        return -1;
                    }
                }
            });%>
            <%--创建一个list, 按照时间顺序排列好要显示的view, 在下面遍歷這個list--%>

            <% for (Object an:list){
                Assignment a = (Assignment)an;
                if(!a.getEndTime().equals("")){
                    Date date = df.parse(a.getEndTime());
                    String tempDate = sdf.format(date);
                    out.println("<li><time class=\"cbp_tmtime\"datetime=\"2019-04-10\"><span>End Date</span> <span>"+tempDate+"</span></time>"+
                            "<div class=\"cbp_tmicon cbp_tmicon-phone\"></div>"+
                            "<div class=\"cbp_tmlabel\">"+
                            "<h2>"+a.getFormat()+"</h2>"+
                            "<p>"+a.getName()+"</p>"+
                            "</div></li>");}
            } %>


        </ul>

    </div>

</div>

</body>

</html>
