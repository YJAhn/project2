<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	//대상.속성값
	//대상.attr() 
/* 	var a=['a','','']
	a[0]=$(function(index){
		return 'img:nth-child('+index+')';
	}).attr('width');
	alert(a[0]); */
	
	
/* 	var a=['a','b','c']

	
 	$('img').attr('width'); 
	
	alert(a[0]);
	alert(a[1]);
	alert(a[2]);
	 */
	
	var a=['a','b','c']

 	a[0]=$('img:nth-child(1)').attr('width'); 
	a[1]=$('img:nth-child(2)').attr('width'); 
	a[2]=$('img:nth-child(3)').attr('width'); 
	alert(a[0]);
	alert(a[1]);
	alert(a[2]);
	
	
	
	
	
	
	
//	function(index){$('img').attr('width');}
//	alert(a);	
	
	//이미지태그 속성 src 값 변경 4.jpg
//	$('img').attr('src','1.jpg');
	
	
	//width height 변경
/* 	$('img').attr({
		width: 300,
		height: 300
	}); */
	
	
	//width값 바꾸기 
	// 이미지 태그 속성 width 100,200,300
	//1. 배열변수 써서
/* 	var c=['100','200','300']
	$('img').attr('width', function(index){
		return c[index];
	}); */
	
	//2. 인덱스 함수 사용
	$('img').attr('width', function(index){
		return 100*(index+1);
	});
	
	
	
	
})
function fun() {
	var b=['4.jpg', '5.jpg', '6.jpg']
	$('img').attr('src',function(index){
		return b[index];
	});
}


</script>
</head>
<body>
<img src="1.jpg" width="200" height="100">
<img src="2.jpg" width="5" height="100">
<img src="3.jpg" width="200" height="100" onmouseover="fun()">
</body>
</html>