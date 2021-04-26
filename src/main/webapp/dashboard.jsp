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
<% String userName = (String) session.getAttribute("userName");%>
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
                        <a href="#dashboard" data-toggle="collapse" aria-expanded="false"><i
                                class="fa fa-dashboard yellow_color"></i> <span>Dashboard</span></a>
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
                            <a href="index.html"><h2 style="color: #963b55"><br>&nbsp&nbsp Covid India Live Details</h2>
                        </div>
                        <div class="right_topbar">
                            <div class="icon_info">
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
            <!-- end topbar -->
            <!-- dashboard inner -->
            <div class="midde_cont" id="midde_cont">
                <div class="container-fluid">
                    <div class="row column_title">
                        <div class="col-md-12">
                            <div class="page_title">
                                <h2><br>Corona Dashboard</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row column1">
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30 red_bg">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-arrow-up"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no">${totalcasesindia}</p>
                                        <p class="head_couter">Total Cases</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30 yellow_bg">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-users"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no">${totalconfirmed}</p>
                                        <p class="head_couter">Active Cases</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30 green_bg">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-level-down"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no">${totaldischarged}</p>
                                        <p class="head_couter">Total Discharged</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30 orange_bg2">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-warning"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no">${totaldeaths}</p>
                                        <p class="head_couter">Total Deaths</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- graph -->
                    <div class="row column2 graph margin_bottom_30">
                        <div class="col-md-l2 col-lg-12">
                            <div class="white_shd full">
                                <div class="full graph_head">
                                    <div class="heading1 margin_0">
                                        <h2>Covid Cases Chart</h2>
                                    </div>
                                </div>
                                <div class="full graph_revenue">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="content">
                                                <div class="area_chart">
                                                    <div class="row">
                                                        <div class="col-md-6" id="piechart">
                                                        </div>
                                                        <div id="myChart"
                                                             style="width:80%; max-width:500px; height:400px;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end graph -->
                <div class="row column_title">
                    <div class="col-md-12">
                        <div class="page_title">
                            <h2 style="padding-left: 10px">Corona Statewise Details</h2>
                        </div>
                    </div>
                </div>
                <div class="table-responsive-sm" style="padding-right: 15px;padding-left: 15px">
                    <table class="table table-dark table-striped">
                        <thead style="background-color: #008080">
                        <tr>
                            <th>State's</th>
                            <th>Active Cases</th>
                            <th>Confirmed Cases(Foreign Return)</th>
                            <th>Total Recovered</th>
                            <th>Total Deaths</th>
                        </tr>
                        <tbody>
                        <c:forEach var="statedata" items="${allStateData}">
                            <tr>
                                <td style="color: #00ffff">${statedata.loc}</td>
                                <td><i class="fa fa-arrow-up"
                                       style="color: #00aced">&nbsp;${statedata.confirmedCasesIndian}</i></td>
                                <td><i class="fa fa-arrow-up"
                                       style="color: greenyellow">&nbsp;${statedata.confirmedCasesForeign}</i></td>
                                <td><i class="fa fa-arrow-circle-down"
                                       style="color: #0ea432">&nbsp;${statedata.discharged}</i></td>
                                <td><i class="fa fa-warning" style="color: red">&nbsp;${statedata.deaths}</i></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="row column3" style="padding-left: 30px;padding-right: 30px">
                    <div class="dark_bg full margin_bottom_30">
                        <div class="full graph_head">
                            <div class="heading1 margin_0">
                                <h2>Covid Facts</h2>
                            </div>
                        </div>
                        <div class="full graph_revenue">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content testimonial">
                                        <div id="testimonial_slider" class="carousel slide"
                                             data-ride="carousel">
                                            <!-- Wrapper for carousel items -->
                                            <div class="carousel-inner">
                                                <div class="item carousel-item active">
                                                    <div class="img-box"><img
                                                            src="img/quar2.jpeg" alt=""></div>
                                                    <p class="testimonial">Stay home, preferably isolate himself /
                                                        herself in a separate & well-ventilated room. Avoid
                                                        common areas frequented by other members of the family</p>
                                                    <p class="overview"><b>Home Quarantine</b>India</p>
                                                </div>
                                                <div class="item carousel-item">
                                                    <div class="img-box"><img
                                                            src="img/aged.jpeg" alt=""></div>
                                                    <p class="testimonial">People in their 50s are at higher risk
                                                        for severe illness than people in their 40s. Similarly,
                                                        people in their 60s or 70s are, The greatest risk for severe
                                                        illness from COVID-19 is among those aged 85 or older.</p>
                                                    <p class="overview"><b>People at Increased Risk for Severe
                                                        Illness</b>India</p>
                                                </div>
                                                <div class="item carousel-item">
                                                    <div class="img-box"><img
                                                            src="img/symp.jpeg" alt=""></div>
                                                    <p class="testimonial">People with COVID-19 have reported a wide
                                                        range of symptoms from mild symptoms to severe illness.
                                                        Symptoms may appear 2-14 days after exposure to the virus.
                                                        If you have fever, cough, or other symptoms, you might have
                                                        COVID-19.
                                                    </p>
                                                    <p class="overview"><b>Symptoms & Emergency Warning Signs
                                                    </b>India</p>
                                                </div>
                                                <div class="item carousel-item">
                                                    <div class="img-box"><img
                                                            src="img/child.jpeg" alt=""></div>
                                                    <p class="testimonial">Babies under 1 year old and children with
                                                        certain underlying conditions may be more likely to have
                                                        severe illness from COVID-19.
                                                    </p>
                                                    <p class="overview"><b>COVID-19 in Children and Teens
                                                    </b>India</p>
                                                </div>
                                            </div>
                                            <!-- Carousel controls -->
                                            <a class="carousel-control left carousel-control-prev"
                                               href="#testimonial_slider" data-slide="prev">
                                                <i class="fa fa-angle-left"></i>
                                            </a>
                                            <a class="carousel-control right carousel-control-next"
                                               href="#testimonial_slider" data-slide="next">
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row column4 graph" style="padding-left: 30px;padding-right: 30px;">

                    <div class="dash_blog">
                        <div class="dash_blog_inner">
                            <div class="dash_head">
                                <h3><span><i class="fa fa-info-circle"></i>&nbsp;Other Useful information</span></h3>
                            </div>
                            <div class="msg_list_main">
                                <ul class="msg_list">
                                    <li>
                                                <span><img src="img/flight.jpeg" class="img-responsive"
                                                           alt="#"/></span>
                                        <span>
                                          <span class="name_user"><a
                                                  href="https://www.mohfw.gov.in/pdf/RevisedguidelinesforInternationalArrivals02082020.pdf">Revised guidelines for International Arrivals</a></span>
                                          </span>
                                    </li>
                                    <li>
                                                <span><img src="img/flight.jpeg" class="img-responsive"
                                                           alt="#"/></span>
                                        <span>
                                                <span class="name_user"><a
                                                        href="https://www.mohfw.gov.in/pdf/Guidelinesfordomestictravel(airortrainorinter-statebustravel).pdf">Guidelines for domestic travel</a></span>
                                          </span>
                                    </li>
                                    <li>
                                                <span><img src="img/boi2.png" class="img-responsive"
                                                           alt="#"/></span>
                                        <span>
                                          <span class="name_user"><a
                                                  href="https://www.mohfw.gov.in/pdf/VisarestrictionsrelatedtoCOVID19Ministries.pdf">Visa restrictions issued by Bureau of Immigration (BOI)</a></span>
                                          </span>
                                    </li>
                                    <li>
                                                <span><img src="img/iso.jpg" class="img-responsive"
                                                           alt="#"/></span>
                                        <span>
                                                <span class="name_user"><a
                                                        href="https://www.mohfw.gov.in/pdf/AdditionalTravelAdvisory1homeisolation.pdf">Guidelines for Home Isolation</a></span>
                                          </span>
                                    </li>
                                    <li>
                                                <span><img src="img/child2.jpeg" class="img-responsive"
                                                           alt="#"/></span>
                                        <span>
                                                <span class="name_user"><a
                                                        href="https://www.mohfw.gov.in/pdf/mentalhealthchildrean.pdf">Taking care of mental health of children during COVID - 19</a></span>
                                          </span>
                                    </li>
                                    <li>
                                                <span><img src="img/testing2.jpeg" class="img-responsive"
                                                           alt="#"/></span>
                                        <span>
                                                <span class="name_user"><a
                                                        href="https://www.mohfw.gov.in/pdf/Revisedtestingguidelines.pdf">Revised Strategy for COVlD-19 testing in lndia</a></span>
                                          </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- footer -->
            <div class="container-fluid" id="container-fluid">
                <div class="footer">
                    <p>Copyright © 2021 Designed by covid.India All rights reserved.</p>
                </div>
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

    $(document).ready(function () {
        $('#customers').hide();
    });
</script>
</body>
</html>