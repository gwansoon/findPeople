<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/static/css/headerStyle.css">
    <link rel="stylesheet" href="../resources/static/css/signupStyle.css">
    <!-- <link rel="stylesheet" href="../../css/headerStyle.css">
    <link rel="stylesheet" href="../../css/loginPage/signupStyle.css"> -->
</head>
<body>
	<div class="headerWrapper"> <!-- header start -->
		<nav class="header">
			<div class="headerContainer">
				<h1 class="headerStart">
					<a class="headerTitle" href="../mainPage/mainpage.do?categories_num=0">FindPeople</a>
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

    <!-- test -->
    <!-- 모달 대화 상자 -->
    <div id="myModal" class="modal">
        <!-- 모달 내용 -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <h3 id="modalTitle">아이디 오류</h3>
            <p id="modalMessage"> 아이디 형식: 영문자, 숫자, 밑줄(_),점(.)<br>3~15자의 문자열</p>
        </div>
    </div>
    <!-- test -->

    <section class="signin-form">
        <h1> 회원가입 </h1>

        <form action="userInsert.do" method = "POST">
            <div class="int-area">
                <input type ="text" name ="userId" id="userId" autocomplete="off" required>
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
                    <input type="text" name="userNick"auticomplete="off"required maxlength="10">
                    <label for ="userNick">닉네임</label> 
                </div>
            <!--</div>-->
            <div class="int-area">
                <input type="text"name="userTel" id="userTel" autiocomplete="off"required >
                <label for="userTel">전화번호</label>
            </div>
            <div class="int-area">
                <input type="text"name="userAge" id="userAge" autiocomplete="off"required >
                <label for="userAge"> 나이 </label>
            </div>
        </div>
        <div class="memberinfo_radio">
                <select class="collegeSelect" name="userCollege" id="userCollege">
                    <option value="백석대학교">백석대학교</option>
                    <option value="단국대학교">단국대학교</option>
                    <option value="상명대학교">상명대학교</option>
                    <option value="호서대학교">호서대학교</option>
                    <option value="서울대학교">서울대학교</option>
                    <option value="연세대학교">연세대학교</option>
                </select>
            <div class="collegeInformWrapper">
                <input class="collegeInformInput"type="text" placeholder="전공" name="userMajor"autiocomplete="off"required >
            </div>
            <div class="collegeInformWrapper">
                <input class="collegeInformInput" type="text" id="userClassNum" placeholder="학번" name="userClassNum"autiocomplete="off"required >
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

    <script src="../resources/static/js/joinCheck.js"></script>
</body>
</html>