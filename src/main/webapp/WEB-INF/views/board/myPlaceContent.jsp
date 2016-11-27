<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
    <title>Box personal portfolio Template</title>
    <link rel="icon" href="img/logo.png" type="image/x-icon">
    
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
    <script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    


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
    
<div data-role="page">    

    <div class="container-fluid" data-role="header" data-position="fixed"> 
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
    
    <!-- Top bar -->
    <div class="top-bar">
        <h1>내 컨텐츠</h1>
        <p><a href="#">Home 링크</a> / About me</p>
    </div>
    <!-- end Top bar -->
    
    <!-- Main container -->
    <div class="container main-container clearfix"> 
        <div class="col-md-6">
            <img src="imgLoad.do?fileName=${picFile}" class="img-responsive" alt="" />
        </div>
        <div class="col-md-6">
           <h3 class="uppercase">${docNum} </h3>
           <h5>Where : ${place}</h5>
           <div class="h-30"></div>
            <p>${docCon} </p>

            <p>with ${docTag}</p>
            <div class="h-10"></div>
            <ul class="social-ul">
                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>

		<div class="col-md-12">
                        <a href="updateContentView.do?seq=${docNum}"><input type="button" class="btn btn-box" value="수정"/></a>
        
        </div>
        </div>
    </div>
    <!-- end Main container -->


    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© 하단 풋터</p>
        </div>
    </footer>
    
    <!-- end footer -->
    
	<div data-role="footer" data-position="fixed">
 		<a href="#"><img src="img/circlelogo.png" style="width:50px; height:50px"></a>
 		<a href="#"><img src="img/circlelogo.png" style="width:50px; height:50px"></a>
 		<a href="#"><img src="img/circlelogo.png" style="width:50px; height:50px"></a>
 		<a href="#"><img src="img/circlelogo.png" style="width:50px; height:50px"></a>
 	</div>
    
    <!-- back to top -->
    <a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
    <!-- end back to top -->

</div>

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