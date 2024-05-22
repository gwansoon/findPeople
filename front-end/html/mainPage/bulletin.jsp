<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/static/css/mainPage/Bulll.css">
    <link rel="stylesheet" href="../resources/static/css/headerStyle.css">
    <title>Blue Border</title>
</head>
<body>
    <div class="headerWrapper"> <!-- header start -->
        <nav class="header">
            <div class="headerContainer">
                <h1 class="headerStart">
                    <a class="headerTitle" href="mainpage.do?categories_num=0">FindPeople</a>
                </h1>
                <div class="headerCenter">
                    <a href="mainpage.do?categories_num=0">전체</a>
                    <a href="mainpage.do?categories_num=1">비교과</a>
                    <a href="mainpage.do?categories_num=2">스터디</a>
                    <a href="mainpage.do?categories_num=3">택시</a>
                    <a href="mainpage.do?categories_num=4">카풀</a>
                    <a href="mainpage.do?categories_num=5">식사</a>
                    <a href="mainpage.do?categories_num=6">헬스</a>
                </div>
                <div class="headerEnd">
                    <!-- 밑 로그인, 로그아웃은 로그인 세션 조건부로 둘 중 하나만 나오게 하기 -->
                    <c:choose>
                        <c:when test="${sessionScope.userNick == null}">
                            <a class="headerHamburger" href="../loginPage/loginpage.do">로그인</a>
                        </c:when>
                        <c:otherwise>
                            <a class="headerHamburger" href="../loginPage/logOut.do">로그아웃</a>
                        </c:otherwise>
                    </c:choose> 
                </div>
            </div>
        </nav>
    </div> <!-- header end -->
    <section class="bull-form">
        <div class="form-content">
            <form action="insertBull.do" metod="POST">
                <h1 id="formTitle">게시글</h1>
                <div class="form-group">
                    <input placeholder="제목을 입력하세요." type="text" id="title" name="bullTitle" maxlength="20" required>
                </div>
                <div class="form-group">
                    <input placeholder="시간을 입력하세요. ex) 매주 목요일 10시" type="text" id="time" name="bullTime" required>
                </div>
                <div class="form-group">
                    <select name="categories_ID" id="formSelectCategory">
                        <option value="none" hidden>카테고리</option>
                        <option value=1>비교과</option>
                        <option value=2>스터디</option>
                        <option value=3>택시</option>
                        <option value=4>카풀</option>
                        <option value=5>식사</option>
                        <option value=6>헬스</option>
                    </select>
                </div>
                <div class="form-group">
                    <input placeholder="인원" type="number" id="participants" name="participants" min=2 required>
                </div>
                <div class="form-group">
                    <textarea placeholder="내용을 입력하세요." id="content" name="content" rows="8" required></textarea>
                </div>
                <input type="hidden" name="userId" value="${sessionScope.userId}">
                <input type="hidden" name="userNick" value="${sessionScope.userNick}">
                <button type="submit" class="submit">글쓰기</button>
                <a class="headerTitle" href="mainpage.do?categories_num=0">
                    <button type="button" class="cancel" >취소</button>
                </a>
            </form>
        </div>
        
    </section>
    
</body>
</html>
