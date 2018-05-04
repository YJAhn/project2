<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
h1{
/*  background-color: #a25; */
}
</style>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
//this, documnet만 ''없이 표현
	//대상.함수()
	// 전체
	//$(전체).css(속성, 값);
//	$('*').css('color', 'red');	
	
	// 태그 'h1' 글자색
	$('h1').css('color', 'blue');
	
	// #이름 .이름
	$('.ta2').css('color', 'green');
	$('.ta2').css('font-family', 'DX시인과나')
	$('.ta2').css('border', '1px solid green')
	$('#ta3').css('color', 'yellow').css('border', '1px solid green')

	// 대상 태그[속성=값] text .val(넣고자하는 값)
	$('input[type=text]').val('넣을말');
	
	// 태그: odd 홀수번째 태그: even 짝수번째
	// 태그: first 첫번째 태그: last 마지막
	$('tr:odd').css('background','yellow');
 	$('tr:even').css('background','#0bb');
	$('tr:first').css('background','#893').css('color', 'red'); 

});
$(function(){
	
	
	
})
</script>
</head>
<body>
<h1>제목1</h1>
<table>
<tr><td>이름</td><td>혈액형</td><td>지역</td></tr>
<tr><td>홍</td><td>A</td><td>부산</td></tr>
<tr><td>이</td><td>B</td><td>서울</td></tr>
<tr><td>안</td><td>AB</td><td>대전</td></tr>
<tr><td>박</td><td>O</td><td>광주</td></tr>
</table>


<input type="text">
<input type="password">
<h1 class="ta2">제목1</h1>
<h1 id="ta3">제목1</h1>

내용



</body>
</html>