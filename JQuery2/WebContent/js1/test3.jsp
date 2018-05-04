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
	//대상.css(); h1대상 글자색 가져오기
	var col = $('h1').css('color');
//	alert(col);
	$('h1:first').css('color','red').css('background', 'green');
	$('h1:odd').css({
		color: 'green',
		background:'yellow'
	});
	//배열변수
	var color=['red', 'blue', 'pink'];
	$('h1').css('color', function(index){
//		alert(index);
//		alert(color[index])
		return color[index];
	});
	var back=['#aa6','#34a','#758'];
	$('p').css({		
		color:function(index){
			return color[index];
		},
		background:function(index){
			return back[index];
		}
	})
	
	
});

</script>



</head>
<body>
<h1>head-0</h1>
<h1>head-1</h1>
<h1>head-2</h1>


<p>p-0</p>
<p>p-1</p>
<p>p-2</p>
</body>
</html>