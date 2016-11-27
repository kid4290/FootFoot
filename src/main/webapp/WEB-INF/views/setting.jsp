<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
<title>Header,Footer 고정</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="img/fav.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
<!--     <link href="ionicons/css/ionicons.min.css" rel="stylesheet"> -->

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">

    <!-- modernizr -->
    <script src="js/modernizr.js"></script>
    
</head>
<body>
<!-- header와 footer 태그에 data-position="fixed"를 주게되면 
 content에 다수의 데이터가 추가되어 화면에 스크롤이 생기더라도 header와 footer가 스크롤의 위치가 변해도 항상 같은 위치에
 고정된다. 또한 해당 content클릭시 해당내용이 확대되며 상단과 하단의 footer와 header가 사라지는 효과가 발생한다. 
-->
<div data-role="page">

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

 <div data-role="header" data-position="fixed" >
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
        
        <!-- nav -->
        <nav >
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
 <div data-role="content">
 
 <!-- top bar -->
    <div class="top-bar">
        <h1>my photo</h1>
        <p><a href="#">Home</a> </p>
    </div>
    <!-- end top bar -->
 
  <table>
   <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
  </table>
 
  </div>
  
<div data-role="footer" data-id="persistFooter" data-position="fixed" data-theme="c">
  <div data-role="navbar" >
   <ul>
    <li><a href="index.do" data-icon="home" class="">Home</a></li>
    <li><a href="02-b.html" data-icon="star">Insert</a></li>
    <li><a href="02-c.html" data-icon="search" >MyList</a></li>
    <li><a href="list.do" data-icon="check" >Beacon</a></li>
    <li><a href="setting.do" data-icon="gear">Setting</a></li>
   </ul>
  </div>
 </div>
 
 
 <!-- div 종료 -->
 </div>

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
