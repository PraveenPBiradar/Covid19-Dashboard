<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Covid-19 - User DashBoard</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- site icon -->
    <link rel="icon" href="images/fevicon.png" type="image/png"/>
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <!-- site css -->
    <link rel="stylesheet" href="style.css"/>
    <!-- responsive css -->
    <link rel="stylesheet" href="css/responsive.css"/>
    <!-- color css -->
    <link rel="stylesheet" href="css/color_2.css"/>
    <!-- select bootstrap -->
    <link rel="stylesheet" href="css/bootstrap-select.css"/>
    <!-- scrollbar css -->
    <link rel="stylesheet" href="css/perfect-scrollbar.css"/>
    <!-- custom css -->
    <link rel="stylesheet" href="css/custom.css"/>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="dashboard dashboard_2">
<% String userName = (String) session.getAttribute("userName");
    String email = (String) session.getAttribute("email");%>
<div class="full_container">
    <div class="inner_container" id="inner_container">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar_blog_1">
                <div class="sidebar-header">
                </div>
                <div class="sidebar_user_info">
                    <div class="icon_setting"></div>
                    <div class="user_profle_side">
                        <div class="user_img"><img class="img-responsive" src="images/layout_img/user_img.jpg" alt="#"/>
                        </div>
                        <div class="user_info">
                            <h6><%=userName%>
                            </h6>
                            <p><span class="online_animation"></span> Online</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sidebar_blog_2">
                <h4>General</h4>
                <ul class="list-unstyled components">
                    <li class="active">
                        <%--<a href="#" data-toggle="collapse" aria-expanded="false"><i
                                class="fa fa-dashboard yellow_color"></i> <span
                                onclick="dashboard();">Dashboard</span></a>--%>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- end sidebar -->
        <!-- right content -->
        <div id="content">
            <!-- topbar -->
            <div class="topbar">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="full">
                        <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i>
                        </button>
                        <div class="logo_section">
                            <a href="#"><h2 style="color: #963b55"><br>&nbsp&nbsp Covid India Live Details</h2>
                                <%--<img class="img-responsive" src="img/covidred.png" alt="#" />--%></a>
                        </div>
                        <div class="right_topbar">
                            <div class="icon_info">
                                <%--<ul>
                                   <li><a href="#"><i class="fa fa-bell-o"></i><span class="badge">2</span></a></li>
                                   <li><a href="#"><i class="fa fa-question-circle"></i></a></li>
                                   <li><a href="#"><i class="fa fa-envelope-o"></i><span class="badge">3</span></a></li>
                                </ul>--%>
                                <ul class="user_profile_dd">
                                    <li>
                                        <a class="dropdown-toggle" data-toggle="dropdown"><img
                                                class="img-responsive rounded-circle"
                                                src="images/layout_img/user_img.jpg" alt="#"/><span
                                                class="name_user"><%=userName%></span></a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="profile.jsp">My Profile</a>
                                            <a class="dropdown-item" href="./login"><span>Log Out</span> <i
                                                    class="fa fa-sign-out"></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <marquee><b style="color: red"><strong>Emergency Contact No's !!! Toll Free - 1075 or Call -
                            91-11-23978046</strong></b>
                        </marquee>
                        <br>
                    </div>
                </nav>
            </div>
            <br>
            <div class="row column1">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="white_shd full margin_bottom_30">
                        <div class="full graph_head">
                            <div class="heading1 margin_0">
                                <h2>User profile</h2>
                            </div>
                        </div>
                        <div class="full price_table padding_infor_info">
                            <div class="row">
                                <!-- user profile section -->
                                <!-- profile image -->
                                <div class="col-lg-12">
                                    <div class="full dis_flex center_text">
                                        <div class="profile_img"><img width="180" class="rounded-circle"
                                                                      src="images/layout_img/user_img.jpg" alt="#"/>
                                        </div>
                                        <div class="profile_contant">
                                            <div class="contact_inner">
                                                <h3><%=userName%>
                                                </h3>
                                                <p><strong>About: </strong>Admin</p>
                                                <ul class="list-unstyled">
                                                    <li><i class="fa fa-envelope-o"></i> : <%=email%>
                                                    </li>
                                                    <li><i class="fa fa-phone"></i> : 987 654 3210</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <!-- end row -->
            </div>
        </div>
        <!-- end dashboard inner -->
    </div>
</div>
</div>
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- wow animation -->
<script src="js/animate.js"></script>
<!-- select country -->
<script src="js/bootstrap-select.js"></script>
<!-- owl carousel -->
<script src="js/owl.carousel.js"></script>
<!-- chart js -->
<script src="js/Chart.min.js"></script>
<script src="js/Chart.bundle.min.js"></script>
<script src="js/utils.js"></script>
<script src="js/analyser.js"></script>
<!-- nice scrollbar -->
<script src="js/perfect-scrollbar.min.js"></script>
<script>
    var ps = new PerfectScrollbar('#sidebar');
</script>
<!-- custom js -->
<script src="js/custom.js"></script>
<script src="js/chart_custom_style2.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript"
        src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
</script>
<script type="text/javascript">
    // Load google charts
    google.charts.load('current', {'packages': ['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    // Draw the chart and set the chart values
    function drawChart() {
        var total = 0;
        var active = 0;
        var death = 0;
        var discharged = 0;
        $.ajax({
            type: "GET",
            url: "./getCovidDataForIndia",
            datatype: "JSON",
            success: function (response) {
                active = response[0];
                total = response[1];
                death = response[2];
                discharged = response[3];

                var data = google.visualization.arrayToDataTable([
                    ['Covid TimeLine', 'Stats'],
                    ['Total Cases', total],
                    ['Deaths', death],
                    ['Active Cases', active],
                    ['Total Discharged', discharged]

                ])
                // Optional; add a title and set the width and height of the chart
                var options = {'title': 'Overall Cases In India', 'width': 600, 'height': 400};

                // Display the chart inside the <div> element with id="piechart"
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                chart.draw(data, options);
                drawChart(data);
            }
        });
    }
</script>
<script>
    google.charts.load('current', {'packages': ['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart(data) {
        var data = data;

        var options = {
            title: 'Overall Cases In India', 'width': 500, 'height': 400
        };

        var chart = new google.visualization.BarChart(document.getElementById('myChart'));
        chart.draw(data, options);
    }

    function dashboard() {
        window.location.href = "./home";
    }

    /*function statedata() {
        var tableData = "";
        $.ajax
        ({
            type: "POST",
            url: "./getallstatedata",
            async: false,
            dataType: "JSON",
            success: function (response) {
                alert('hi');
                for (var s = 0, len = response.length; s < len; ++s) {
                    var obj = response[s];
                    var total = obj.confirmedCasesIndian + obj.discharged + obj.deaths;
                    tableData += "<tr>"
                        + "<td>" + obj.loc + "</td>"
                        + "<td>" + total + "</td>"
                        + "<td>" + obj.confirmedCasesIndian + "</td>"
                        + "<td>" + obj.discharged + "</td>"
                        + "<td>" + obj.deaths + "</td>"
                        + "</tr>";

                }
                $('#praveen').append(tableData);
                $('#praveen').show();
                $('#buttondiv').show();
                $('#container-fluid').hide();
                $('#inner_container').hide();
                // window.location.href="./login"
            }


        });
    }*/

    $(document).ready(function () {
        $('#customers').hide();
    });
</script>
</body>
</html>