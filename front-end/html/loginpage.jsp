<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>파피</title>
	<link rel="stylesheet" href="../resources/static/css/loginpage_style.css">
	<script src="jquery-3.7.1.min.js"></script>
</head>
<body>
	<section class="login-form">
		<h1>파피</h1>
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