<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/static/css/headerStyle.css">
    <link rel="stylesheet" href="../resources/static/css/signupStyle.css">
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
        <h1> 회원가입 </h1>
        <form action="userInsert.do" method = "POST">
            <div class="int-area">
                <input type ="text" name ="userId" autocomplete="off" required>
                <label for ="userId"> 아이디</label>
            </div >
            <div class="int-area">
                <input type="password" name="userPass" autocomplete="off" required >
                <label for="userPass">비밀번호</label>
            </div>
            <div class="int-area">
                <input type="password" name="userPassCheck" auticomplete="off"required >
                <label for = "userpassCheck">비밀번호 확인</label>
            </div>
            <!--<div>-->
                <div class="int-area">
                    <input type="text" name="userNick"auticomplete="off"required >
                    <label for ="userNick">닉네임</label> 
                </div>
            <!--</div>-->
            <div = class="int-area">
                <input type="text"name="userTel"autiocomplete="off"required >
                <label for="userTel">전화번호</label>
            </div>
            <div class="int-area">
                <input type="text"name="userAge"autiocomplete="off"required >
                <label for="userAge"> 나이 </label>
                </div>
            </div>
            <div class="memberinfo_radio">
                <b>성별</b>
                <span>
                    <input type="radio" id="female"name="userGender"value=1>
                    <label for="female" style="font-size: 18px; color: #1a1919;">여성</label>
                </span>
                <span>
                    <input type="radio" id=male name="userGender"value=0>
                    <label for="male" style="font-size: 18px; color: #1a1919;">남성</label>
                </span>
            </div>
            <div class="btn-area">
				<button type="submit">가입</button>
            </div>
            
    
        </form>
    </section>

    
</body>
</html>