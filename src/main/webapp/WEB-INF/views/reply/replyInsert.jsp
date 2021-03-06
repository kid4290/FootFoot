<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >


<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Box personal portfolio Template</title>
    <link rel="icon" href="img/fav.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">


    <!-- modernizr -->
    <script src="js/modernizr.js"></script>

</head>

<body>

    <div class="container-fluid"> 
       <!-- box-header -->
        <header class="box-header">
            <div class="box-logo">
                <a href="index.html"><img src="img/logo.png" width="80" alt="Logo"></a>
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
		         <li><a href="index.html">HOME</a></li>
		         <li><a href="fileBoardDtoFormView.do">INSERT</a></li>
		         <li><a href="listResult.do">BEACON</a></li>
		         <li><a href="myPlace.do">MYLIST</a>
		         <i class="ion-ios-circle-filled color"></i></li>
		         <li><a href="#">SETTING</a></li>

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
        <h1>내 프로필 정도?</h1>
        <p><a href="#">Home 링크</a> / About me</p>
    </div>
    <!-- end Top bar -->
    
    <!-- Main container -->
    <div class="container main-container clearfix"> 
        <form action="reply.do?seq=${docNum}" method="POST">
        <div class="col-md-6">
           <h3 class="uppercase"><input type="text" name="docNum" id="docNum" value="${docNum}" readOnly> </h3>
           <h5>Writer : <input type="text" name="userId" id="userId" value="${userid}" readOnly></h5>
           <div class="h-30"></div>
            <p>reply <input type="text" name="reCon" id="reCon"> </p>
            <div class="h-10"></div>
            <ul class="social-ul">
                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>

		<div class="col-md-12">
            <input type="submit" class="btn btn-box" value="확인"/>
        
        </div>
        </div>
        </form>
    </div>
    <!-- end Main container -->


    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© FootFoot</p>
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