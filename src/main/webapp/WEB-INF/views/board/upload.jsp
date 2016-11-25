<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>
<script type="text/javascript">
   function textlimit() {
      var textlimit = document.enrollForm.contents.value;
      if (textlimit.length > 90) {
         //입력데이터 오류처리
         alert("90글자를 넘깁니다.");
         return false;
      }
      var checkText = document.getElementById("check");
      checkText.style = "color:blue;"
      checkText.innerHTML = textlimit.length;

   }
</script>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
.account-wall {
	margin-top: 50px;
	margin-left: 40px;
}

.form-controlhalf {
	display: block;
	width: 50%;
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
</style>
</head>
<body>

	

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Script to Activate the Carousel -->
	<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Script to Activate the Carousel -->
	<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>


	</header>

	<!-- Page Content -->
	<div class="container">

		<!-- Marketing Icons Section -->
		<div class="row"></div>

	</div>
	<!-- /.row -->

	<!-- Portfolio Section -->

	<!-- /.row -->

	<!-- Features Section -->
	<div class="row">
		<div class="col-md-6" style="margin-left: 360px; margin-top: 100px;">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-4 col-md-offset-4">
						<div class="account-wall">
							<img src="images/sponser2.png" height="60" width="150"
								style="margin-bottom: 20px">

								
								<form class="form-signin" name="enrollForm" method="post" action="upload.do" enctype="multipart/form-data">
								
										<input type="text"
									class="form-control" name="userid" id="userid" placeholder="예시) 아이디" required>
								&nbsp;
								<input type="text"
									class="form-control" name="lat" id="lat" placeholder="예시) 위도" required>
								&nbsp;
								<input type="text"
									class="form-control" name="lon" id="lon" placeholder="예시) 경도" required>
								&nbsp;
								
                     			<input type="file" id="bFile12" name="bFile12">
                     				&nbsp;
									<input type="text"
									class="form-control" name="DocTle" id="DocTle" placeholder="글제목" required>
								&nbsp;
								<input type="text"
									class="form-control" name="DocCon" id="DocCon" placeholder="글내용" required>
								&nbsp;
								<input type="checkbox"
									class="form-control" name="DocTf" id="DocTf" value="비공개" required>
								&nbsp;
                     			<input type="text"
									class="form-control" name="DocTag" id="DocTag" placeholder="글태그" required>
								&nbsp;
                     			<br> 
								<button class="btn btn-lg btn-primary btn-block" type="submit">
									Sign in</button>
							</form>


							<a href="index.jsp" class="text-center new-account">Create an
								account </a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-md-6"></div>
	</div>
	<!-- /.row -->
	
	

	<hr>

	<!-- Call to Action Section -->


	<hr>

	<!-- Footer -->

	<footer> <!-- 
	<div style="height: 100px;">
	</div>
	</footer>
	</div>
	footer -->


	<!-- Script to Activate the Carousel -->
	<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>
</html>