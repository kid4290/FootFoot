<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- header -->
	<div class="modal-header">
		<a type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</a>
		<h2 class="modal-title text-center fc-orange">${vo.bSpotName}</h2>
	</div>
	<div class="modal-body">
		<!-- main-container -->
		<div class="content">
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
	<!-- Footer -->
	<div class="modal-footer"><a type="button" href="#" class="btn btn-default"
			data-dismiss="modal">자세히보기</a>
	</div>

</body>
</html>