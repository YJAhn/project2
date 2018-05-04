<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//대상.append() 대상 태그 뒷부분에 추가
	//body태그 append() 뒤부분에 추가 "<h2>뒤부분 추가</h2>"
	
	$('body').append("<h2>body-뒤부분 추가</h2>");
	$('h1').append("<h2>h1-뒤부분 추가</h2>");
	$('h1').prepend("<h2>h1-앞부분 추가</h2>");
	
	//태이블 태그 뒷부분에 kim 김길동 추가
	$('table').append("<tr><td>kim</td><td>김길동</td></tr>");
	$('table').append("<tr><td>Ahn</td><td>안길동</td></tr>");
	
	//div태그 뒷부분에 추가 $('img').first() 첫번째 이미지
//	$('div').append('<img src="1.jpg">');
	
	
	//2000=2초
	setInterval(function(){
		$('div').append($('img').first())
	}, 2000);
	
});
</script>
</head>
<body>
<!-- js1/test5.jsp -->


<h1>h1-본문</h1>
<table border="1">
<tr><td>아이디</td><td>이름</td></tr>

</table>

<div>
<img src="1.jpg">
<img src="2.jpg">
<img src="3.jpg">
<img src="4.jpg">
<img src="5.jpg">
</div>

</body>
</html>