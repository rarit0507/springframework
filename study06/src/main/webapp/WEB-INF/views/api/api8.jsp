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
<title>학생 등록</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<!-- name이나 id는 하나의 폼 안에서 겹치면 안 됨. 그래서 클래스 씀 -->
	<input type="text" name="part" id="part" placeholder="반 이름 입력" /><br><br>
	<input type="number" name="classNum" id="classNum" placeholder="반 번호 입력" /><br><br>
	<div class="form">
		<input type="number" name="stdNumber1" class="num" placeholder="번호 입력" />
		<input type="text" name="name1" class="name" placeholder="학생명 입력" />
		<input type="number" name="age1" class="age" placeholder="나이 입력" />
	</div>
	<div class="form">
		<input type="number" name="stdNumber2" class="num" placeholder="번호 입력" />
		<input type="text" name="name2" class="name" placeholder="학생명 입력" />
		<input type="number" name="age2" class="age" placeholder="나이 입력" />
	</div>
	<div class="form">
		<input type="number" name="stdNumber3" class="num" placeholder="번호 입력" />
		<input type="text" name="name3" class="name" placeholder="학생명 입력" />
		<input type="number" name="age3" class="age" placeholder="나이 입력" />
	</div>
	<button type="button" id="btn1">등록</button>
	<script>
	$(document).ready(function() {	//문서가 다 끝났을 때
		$("#btn1").click(function() {	//버튼 누르면 작동함
			var student = {stdNumber:0, name:"아무개", age:0 };
			var stds = [student, student, student];
			var team = {part:$("#part".val(), classNum:$("#classNum").val(), students:stds);}	//team 객체(그릇임) 추가	//students:stds = students라는 리스트 멤버변수에 stds 배열 넣겠다
			$.each($(".form"), function(index, value) {	// == java의 for:each 반복문
				var num = $(this).find(".num").val();
				var name = $(this).find(".name").val();
				var age = $(this).find(".age").val();
				
				student = {stdNumber:num, name:name, age:age };	//각 객체는 이런 값을 가짐
				stds[index] = student;		//배열에 넣기
			});
			
			team.students = stds;	//team의 students 변수는 stds 배열이다
			
			$.ajax({
				type:"post",
				url:"${path2}/api/api8.do",
				data:JSON.stringify(stds),
				dataType:"json",
				contentType: 'application/json; charset=utf-8',
				success:function(data) {}
			});
		});
	});
	</script>
</body>
</html>