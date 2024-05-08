<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>파피</title>
	<link rel="stylesheet" href="../resources/static/css/headerStyle.css">
	<link rel="stylesheet" href="../resources/static/css/loginpage_style.css">
	<script src="jquery-3.7.1.min.js"></script>
</head>
<body>
	<div class="headerWrapper"> <!-- header start -->
		<nav class="header">
			<div class="headerContainer">
				<h1 class="headerStart">
					<a class="headerTitle" href="">FindPeople</a>
				</h1>
				<div class="headerCenter">
					<a href="">전체</a>
					<a href="">비교과</a>
					<a href="">스터디</a>
					<a href="">택시</a>
					<a href="">카풀</a>
					<a href="">식사</a>
					<a href="">헬스</a>
				</div>
				<div class="headerEnd">
					<button class="headerHamburger">&#9776;</button>
				</div>
			</div>
		</nav>
		<div class="hamburgerListWrapper">	
			<ul class="hamburgerList">
				<li><a href="">메뉴1</a></li>
				<li><a href="">메뉴2</a></li>
				<li><a href="">메뉴3</a></li>
				<li><a href="">메뉴4</a></li>
			</ul>
		</div>
	</div> <!-- header end -->

	<section class="login-form">
		<h1>Login</h1>
		<form action="">
			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">USER NAME</label>
			</div>
			<div class="int-area">
				<input type="password" name="pw" id="pw" autocomplete="off" required>
				<label for="pw">PASSWORD</label>
			</div>
			<div class="btn-areaWrapper">
				<div class="btn-area">
					<button type="submit">LOGIN</button>
				</div>
				<div class="btn-area">
					<a href="">SIGNUP</a>
				</div>
			</div>
		</form>
		<div class="caption">
			<a href="">Forget Password</a>
		</div>
	</section>
	
</body>
</html>