<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>MultipartHttpServletRequest 사용</h3>
<form action="upload.do" method="POST" enctype="multipart/form-data">
	제목: <input type="text" name="title"><br/> 
	파일: <input type="file" name="f"><br/> 
    <input type="submit" value="전송" /> 
</form>
</body>
</html>