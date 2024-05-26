<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

</body>
<script>
	if(${message} == 1){
		alert("이미 존재하는 아이디 입니다.");	
	}else if(${message} == 2){
		alert("이미 존재하는 닉네임 입니다.");
	}else if(${message} == 3){
		alert("비밀번호가 일치 하지 않습니다.");
	}
	
	window.location.href ="signup.do"
</script>


</html>