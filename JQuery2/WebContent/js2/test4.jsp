<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{margin: 0px; padding: 0px;}
ul{list-style: none;}
img{ width: 500px; height: 350px;}
</style>

<script src="../js/jquery-3.3.1.js"></script>
<script src="../js/jquery.innerfade.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//대상 innerfade
	$('#inner_fade').innerfade({
		animationtype:'slide',//서서히
        speed:750,//속도
        type:'sequence',//순차적, 랜덤.
        timeout:2000,
        containerheight:350,
       /*  runningclass:'innerfade',
        children: null */
        
	});
	
});
</script>
</head>
<body>
<ul id="inner_fade">
	<li><img src="1.jpg"></li>
	<li><img src="2.jpg"></li>
	<li><img src="3.jpg"></li>
	<li><img src="4.jpg"></li>
	<li><img src="5.jpg"></li>
	
</ul>


</body>
</html>