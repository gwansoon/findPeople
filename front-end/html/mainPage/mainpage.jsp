<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../resources/static/css/mainPage/mainStyle.css">
	<link rel="stylesheet" href="../resources/static/css/mainPage/group.css">
	<link rel="stylesheet" href="../resources/static/css/headerStyle.css">
	<script src="https://kit.fontawesome.com/05d1420fac.js" crossorigin="anonymous"></script>
	<title>FindPeople</title>
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
	
	<div class="centerWrapper">
		<c:choose>
			<c:when test="${sessionScope.userNick == null}">
				<h2>FindPeple에 가입하면</h2>
			</c:when>
			<c:otherwise>
				<div class="centerTextCenter" >
					<h1 style="display:inline;">${sessionScope.userNick} </h1>
					<h2 style="display:inline;">님이</h2>
				</div> 
			</c:otherwise>
		</c:choose> 
		<h2>들어갈 수 있는 모임 수</h2>
		<p>- ${bullCount} -</p> <!-- 관순햄 전체 모임 개수 표시해주세요 -->
		<div class="centerButtonWrapper"> <!-- 로그인/로그아웃 조건부 출력-->
			<c:choose>
				<c:when test="${sessionScope.userNick != null}">
					<a href="../mainPage/bulletin.do">
						<button class="centerButton makeGroupButton">모임 만들기</button>
					</a>
					<a  href="">
						<button class="centerButton myGroupButton">내 모임</button>
					</a>
				</c:when>
	
			</c:choose>
		</div > <!-- 로그인/로그아웃 조건부 출력-->
		
	</div>
	<div class="contentWrapper">
		<ul class="content">
			<!-- 반복문 시작 -->
			<c:forEach items="${bullList}" var="bulletin">
			<li>
			 <%-- ${bulletin.bullSEQ} --%>
				<a href="getBullDetail.do?bullSEQ=${bulletin.bullSEQ}" class="groupHref"> <!-- 디테일들어가는 경로 -->
					<div class="groupLeft">${bulletin.categories_Title } </div>
					<div class="groupRight">
						<div class="groupSubject">${bulletin.bullTitle }</div>
						<div class="groupBottomWrapper">
							<div class="groupDate">${bulletin.bullTime}</div>
							<div class="groupMember">3/${bulletin.participants }</div>
						</div>
					</div>
				</a>
			</li>
			</c:forEach>
			<!-- 반복문 끝 -->
		</ul>
	</div>
</body>
</html>