`<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Beacon List Page</title>
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
        <!-- box header -->
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
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
               	<li class="box-label">FootFoot</li>
		         <li><a href="index.do">HOME</a></li>
		         <li><a href="fileBoardDtoFormView.do">INSERT</a></li>
		         <li><a href="myPlace.do">MYLIST</a></li>
		         <li><a href="listResult.do">BEACON</a><i class="ion-ios-circle-filled color"></i></li>
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

    <!-- top bar -->
    <div class="top-bar">
    ${mac}
        <h1>BEACON</h1>
        <p><a href="#">Home</a> / BEACON</p>
    </div>
    <!-- end top bar -->

    <div class="container main-container">
        <div class="clearfix">

            <!-- service-box -->
            <div class="col-md-4 service-box">
                <i class="ion-android-favorite-outline size-50"></i>
                <h3>BEACON LIST</h3>
                <div class="h-10"></div>
            <table border="1" cellspacing="0">

        <colgroup>
            <col width="100">
            <col width="100">
            <col width="110">
            <col width="100">
            <col width="100">
        </colgroup>
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Location</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="dto" items="${list}">
                <tr>
                    <td class="bSpotName"><a href="contect.do" data-target="#modal_test" type="button" data-toggle="modal">${dto.B_SPOTNAME}</a></td>
                    <td class="bLoaction"><a href="${dto.B_PAGE}">${dto.B_LOCACTION}</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

            </div>
            <!-- end service-box -->

            <!-- service-box -->
            <div class="col-md-4 service-box">
                <i class="ion-android-options size-50"></i>
                <h3>Easy Customization</h3>
                <div class="h-10"></div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae </p>
            </div>
            <!-- end service-box -->

            <!-- service-box -->
            <div class="col-md-4  service-box">
                <i class="ion-android-checkmark-circle size-50"></i>
                <h3>Creative Design</h3>
                <div class="h-10"></div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae </p>
            </div>
            <!-- end service-box -->

            <!-- service-box -->
            <div class="col-md-4  service-box">
                <i class="ion-ios-pulse-strong size-50"></i>
                <h3>user friendly</h3>
                <div class="h-10"></div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae </p>
            </div>
            <!-- end service-box -->

            <!-- service-box -->
            <div class="col-md-4  service-box">
                <i class="ion-earth size-50"></i>
                <h3>fully customizible</h3>
                <div class="h-10"></div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae </p>
            </div>
            <!-- end service-box -->

            <!-- service-box -->
            <div class="col-md-4  service-box">
                <i class="ion-speedometer size-50"></i>
                <h3>retina ready</h3>
                <div class="h-10"></div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim nosmet ipsos nosse non possumus. Inscite autem medicinae </p>
            </div>
            <!-- end service-box -->

        </div>
    </div>


    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© Box Portfolio 2016</p>
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
    
    
 <div class="modal" id="modal_test">

      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  aria-hidden="true">&times;</button>
               <h2 class="modal-title text-center fc-orange">비콘정보</h2>
            </div>
            <div class="modal-body">
               <!-- main-container -->
               <div class="container main-container">
                  <div class="col-md-3">
                     <form action="#" method="post">
                        <div class="row">
                           <div class="col-md-3">
                              <div class="input-contact">
                                 <input type="text" name="name"> <span>비콘이름</span>
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="input-contact">
                                 <input type="text" name="email"> <span>비콘이메일</span>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="input-contact">
                                 <input type="text" name="object"> <span>object</span>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="textarea-contact">
                                 <textarea name="message"></textarea>
                                 <span>메세지</span>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <a href="#" class="btn btn-box">보내기</a>
                           </div>
                        </div>
                     </form>
                  </div>

                  <div class="col-md-3">
                     <h3 class="text-uppercase">대 제목</h3>
                     <h5>소 제목</h5>
                     <div class="h-30"></div>
                     <p>내용</p>
                     <div class="contact-info">
                        <p>
                           <i class="ion-android-call"></i> 010 9295 4920
                        </p>
                        <p>
                           <i class="ion-ios-email"></i> box@info.com
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
   </div>
   <!-- /.modal -->

</body>

</html>