<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Ajax Test4</title>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
<nav>
	<h2>04_POST 전송 + Parameter</h2>
	<hr>
	<ul>
		<li><a href="${path2 }/ajax/">Home</a></li>
	</ul>
	<input type="text" name="msg" id="msg" placeholder="메시지 입력">
	<button id="btn4" type="button">POST 전송</button>
	<script>
	$(document).ready(function() {
		$("#btn3").click(function() {
			var msg = $("msg").val();
			if(msg==""){ msg = "Post Parameter 전송" }
			var obj = { "msg": msg};
			$.ajax({
				type:"post",
				url:"${path2}/ajax/ajax4pro.do",
				data:obj,
				success:function(res) { console.log("성공", res); },
				error:function(err) { console.log("성공", err); }
			});
		});
	});
	</script>
</nav>	
</body>
</html>