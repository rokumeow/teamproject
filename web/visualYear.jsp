<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="entity.Assignment" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Iterator" %>

<%--
  Created by IntelliJ IDEA.
  User: xiaziyuan
  Date: 2019/4/15
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%Set<Assignment> assignments = (Set<Assignment>) session.getAttribute("allAssignments");%>
<% HashMap<Date,Integer> timemap = new HashMap<Date, Integer>(); %>

<html>
<head>
    <title>Visualisation</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

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
        <h1>
            Visualization
        </h1><br>
        <form action="visual.action" method="get">
            <input type="submit" onclick="" style="color: #0f88eb;background-color: transparent" value="edit own module">
        </form>
        <form action="allmodule.action" method="get">
            <input type="submit" onclick="" style="color: #0f88eb;background-color: transparent" value="view all modules">
        </form>
        <form action="alltml.action" method="get">
            <input type="submit" onclick="" style="color: #0f88eb;background-color: transparent" value="view timeline">
        </form>
        <%--<form action="alltml.action" method="get">--%>
            <%--<input type="submit" onclick="" style="color: #0f88eb;background-color: transparent" value="view timeline">--%>
        <%--</form>--%>
        <!-- <p>Module Assessment Data Collection System</p>-->
    </center>
</div>
<center>
        <%
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");


    for (Assignment a:assignments){
        try{
            date = sdf.parse(a.getEndTime());
        }catch (Exception e){
            date = null;
        }
        if(timemap.containsKey(date)){
            Integer i = timemap.get(date);
            i++;
            timemap.put(date,i);
        }else{
            timemap.put(date,1);
        }
}%>

    <div id="container" style="height: 100%"></div>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
    <script type="text/javascript">

        //HeatMap here is as same as that in visualLtm.jsp
        var dom = document.getElementById("container");
        var myChart = echarts.init(dom);
        var app = {};
        option = null;
        function getVirtulData(year) {
            <s:property value="year"/>
            year = year || '2018';
            var date = +echarts.number.parseDate(year + '-01-01');
            var end = +echarts.number.parseDate((+year + 1) + '-01-01');
            var dayTime = 3600 * 24 * 1000;
            var temp;
            var data = [];
            for (var time = date; time < end; time += dayTime) {
                data.push([
                    echarts.format.formatTime('yyyy-MM-dd', time),
                    0
                ]);
            }

            <% Iterator iter = timemap.entrySet().iterator();
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                while (iter.hasNext()) {
                    HashMap.Entry entry = (HashMap.Entry) iter.next();
                    Date key = (Date) entry.getKey();
                    if(key == null){
                        continue;
                    }
                    String stringDate = df.format(key);
                    Integer val = (Integer) entry.getValue();
                    out.println("temp = echarts.number.parseDate('"+stringDate+"');");
                    out.println("data.push([echarts.format.formatTime('yyyy-MM-dd', temp),"+val+"]);");
                }
            %>

            return data;
        }

        option = {
            title: {
                top: 30,
                left: 'center',
                text: 'Deadline Distribution'
            },
            tooltip: {
                position: 'top',
                formatter: function (p) {
                    var format = echarts.format.formatTime('dd-MM-yyyy', p.data[0]);
                    return format + ': ' + p.data[1];
                }
            },
            visualMap: {
                min: 0,
                max: 10,
                type: 'continuous',
                orient: 'horizontal',
                left: 'center',
                top: 65,
                textStyle: {
                    color: '#000'
                }
            },
            calendar: [
                {
                    top: 120,
                    left: 30,
                    right: 30,
                    cellSize: ['auto', 13],
                    range: ['2018']},
                {  top: 300,
                    left: 30,
                    right: 30,
                    cellSize: ['auto', 13],
                    range: '2019'}
            ],
            //     itemStyle: {
            //         normal: {borderWidth: 0.5}
            //     },
            //     yearLabel: {show: true}
            // }

            series: [{
                type: 'heatmap',
                coordinateSystem: 'calendar',
                calendarIndex:0,
                data: getVirtulData(2018)
            },{
                type: 'heatmap',
                coordinateSystem: 'calendar',
                calendarIndex:1,
                data: getVirtulData(2019)
            }

            ]

        };
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    </script>

</body>
</html>
