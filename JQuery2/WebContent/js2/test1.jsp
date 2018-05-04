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
	//대상.이벤트함수()	.bind('click',기능)	.click(기능)
	$('#btn').bind('click', function(){
		alert("클릭");
	});
	$('#btn').click(function(){
		alert("클릭2");
	});
	
	
	$('h1').click(function(){
		$(this).html(function(index, html){
			return '*'+html+'*';
		});
		$(this).unbind();
	});
	
	//하이퍼 링크를 클릭했을 때 배경색 변경
	$('a').click(function(){
		$(this).css('background', 'red');
		return false;
	});
	
	$('img').mouseover(function(){
		$(this).attr('src', '2.jpg');
	})
	$('img').mouseout(function(){
		$(this).attr('src', '1.jpg');
	})

});
</script>
</head>
<body>
<!-- js2/test1.jsp -->

<img src="1.jpg">
<a href="http://www.naver.com">네이버</a>
<h1>head0</h1>
<h1>head1</h1>
<h1>head2</h1>

<input type="button" value="버튼" id="btn">


</body>
</html>