<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/static/css/mainPage/detail.css">
    <link rel="stylesheet" href="../resources/static/css/headerStyle.css">
    <title>Detail</title>
</head>
<body>
    <div class="headerWrapper"> <!-- header start -->
		<nav class="header">
			<div class="headerContainer">
				<h1 class="headerStart">
					<a class="headerTitle" href="mainpage.do">FindPeople</a>
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
	
    <div class="detailBox">
        <div class="titleBox">
            <div class="title" id="bullTitle">${bullDetail.bullTitle}</div>
        </div>
        <div class="contentBox">
            <div class="category" id="categories_ID">카테고리 : ${bullDetail.categories_Title}</div>
            <div class="member" id="participants">인원 : 현원/${bullDetail.participants}</div>
			<div class="time" id="bullTime">일정 : ${bullDetail.bullTime}</div>
            <div class="content" id="content">${bullDetail.content}</div>
        </div>
    </div>
	<div class="joinMemList">
		<div class="listTxt">참여자</div>
		<div class="joinMemBox">
			<table>
				<tr class="hang"> <!--이부분 반복-->
					<td class="memName" id="usernick">${bullDetail.userNick}</td>
					<td>
						<a href="#" class="kick" onlick=none>x</a>
					</td>
				</tr> <!--여기까지-->
			</table>
			<tr>
				
			</tr>
		</div>
	</div>
	<div class="commentGrid">
		<div class="text">댓글</div>
		<div class="commentBox"> <!--댓글 여기 반복하심 됩니다.-->
			<div class="commentName" id="comment_author">박건호</div>
			<div class="comment" id="comment_content">댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글</div>
		</div> <!--여기까지.-->
	</div>
	<button class="joinBtn">가입하기</button>
	<button class="exitBtn">탈퇴하기</button>
</body>
</html>