<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../resources/static/css/headerStyle.css">
	<link rel="stylesheet" href="../resources/static/css/loginpage_style.css">
</head>
<body>
	<div class="headerWrapper"> <!-- header start -->
		<nav class="header">
			<div class="headerContainer">
				<h1 class="headerStart">
					<a class="headerTitle" href="">FindPeople</a>
				</h1>
				<div class="headerCenter">
					<a href="">내 모임</a> <!-- 본인 글 목록 페이지로 이동 -->
					<a href="">전체</a>
					<a href="">비교과</a>
					<a href="">스터디</a>
					<a href="">택시</a>
					<a href="">카풀</a>
					<a href="">식사</a>
					<a href="">헬스</a>
				</div>
				<div class="headerEnd">
					<!-- 밑 로그인, 로그아웃은 로그인 세션 조건부로 둘 중 하나만 나오게 하기 -->
					<c:choose>
						<c:when test="${sessionScope.userNick == null}">
							<a href="../loginPage/loginpage.do">
								<button class="headerHamburger">로그인</button>
							</a>
						</c:when>
					<c:otherwise>
							<a href="../loginPage/logOut.do">	
								<button class="headerHamburger">로그아웃</button>
							</a>	
						</c:otherwise>
					</c:choose> 
				</div>
			</div>
		</nav>
	</div> <!-- header end -->

    <section class="signin-form">
        <h1> 로그인 </h1>
        <form action="loginClick.do" method = "POST">
            <div class="int-area">
                <input type ="text" name ="userId" autocomplete="off" required>
                <label for ="userId"> 아이디</label>
            </div >
            <div class="int-area">
                <input type="password" name="userPass" autocomplete="off" required >
                <label for="userPass">비밀번호</label>
            </div>
            <div class="btn-area">
				<button type="submit">로그인</button>
				<a href="signup.do">회원가입</a>
            </div>
            
            
            
    
        </form>
    </section>

    
</body>
</html>