<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>my photo</title>
    <link rel="icon" href="img/logo.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">

    <!-- modernizr -->
    <script src="js/modernizr.js"></script>
    
</head>

<body>

    <!-- Preloader -->
    <div id="preloader">
        <div class="pre-container">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
    </div>
    <!-- end Preloader -->

    <div class="container-fluid">
        <!-- box-header -->
       <header class="box-header">
      <div class="box-logo">
         <a href="index.do">
         <img src="img/circlelogo.png" width="50" alt="Logo">
         </a>
      </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
        </header>
        <!-- end box-header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                 <li class="box-label">FootFoot</li>
		         <li><a href="index.do">HOME</a></li>
		         <li><a href="fileBoardDtoFormView.do">INSERT</a></li>
		         <li><a href="myPlace.do">MYLIST</a><i class="ion-ios-circle-filled color"></i></li>
		         <li><a href="list.do">BEACON</a></li>
		         <li><a href="setting.do">SETTING</a></li>
		         
                <li class="box-label">Follow me</li>

                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>
        </nav>
        <!-- end nav -->
    </div>

    <!-- top bar -->
    <div class="top-bar">
        <h1>my photo</h1>
        <p><a href="#">Home</a> </p>
    </div>
    <!-- end top bar -->

    <!-- main container -->
    <div class="main-container portfolio-inner clearfix">
        <!-- portfolio div -->
        <div class="portfolio-div">
            <div class="portfolio">
                <!-- portfolio_filter -->
                <div class="categories-grid wow fadeInLeft">
                    <nav class="categories text-center">
                        <ul class="portfolio_filter">
                            <li><a href="" class="active" data-filter="*">my</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- portfolio_filter -->

                <!-- portfolio_container -->
                <div class="no-padding portfolio_container clearfix">
                    <!-- single work -->
                    <c:forEach var="dto" items="${requestScope.list}"> 
                    <div class="col-md-4 col-sm-6  fashion logo">
                        <a href="myPlacePicContent.do?seq=${dto.getDocNum()}" class="portfolio_item">
                            <img src="imgLoad.do?fileName=${dto.getPicFile()}" alt="image" class="img-responsive" 
                           />
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>${dto.getPlace()}</span>
                                        <p>${dto.getDocNum()}
                                        <em>check my place</em>
                                    </div>
                                </div>
                            </div>
                            
                        </a>
                    </div>
                    </c:forEach>
                    <!-- end single work -->
                </div>
                <!-- end portfolio_container -->
            </div>
            <!-- portfolio -->
        </div>
        <!-- end portfolio div -->
    </div>
    <!-- end main container -->


    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright"> where</p>
        </div>
    </footer>
    <!-- end footer -->

    <!-- back to top -->
    <a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
    <!-- end back to top -->




    <!-- jQuery -->
    <script src="js/jquery-2.1.1.js"></script>
    <!--  plugins -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/animated-headline.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>


    <!--  custom script -->
    <script src="js/custom.js"></script>

</body>

</html>