<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../resources/static/css/headerStyle.css">
	<link rel="stylesheet" href="../resources/static/css/mainPage/mainStyle.css">
	<link rel="stylesheet" href="../resources/static/css/mainPage/myGroup.css">
	<script src="https://kit.fontawesome.com/05d1420fac.js" crossorigin="anonymous"></script>
	<title>FindPeople</title>
</head>
<body>
	<div class="headerWrapper"> <!-- header start -->
		<nav class="header">
			<div class="headerContainer">
				<h1 class="headerStart">
					<a class="headerTitle" href="mainpage.do?categories_num=0">FindPeople</a>
				</h1>
				<div class="headerCenter">
					<a class = "select" href="mainpage.do?categories_num=0">전체</a>
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
		<h2>참여하고 있는 모임</h2>
		<p>목록</p> <!-- 관순햄 전체 모임 개수 표시해주세요 -->
		<div class="centerButtonWrapper"> <!-- 로그인/로그아웃 조건부 출력-->
			<c:choose>
				<c:when test="${sessionScope.userNick != null}">
					<a href="../mainPage/bulletin.do">
						<button class="centerButton makeGroupButton">모임 만들기</button>
					</a>
					<a  href="mainpage.do?categories_num=0">
						<button class="centerButton myGroupButton">전체목록</button>
					</a>
				</c:when>
	
			</c:choose>
		</div > <!-- 로그인/로그아웃 조건부 출력-->
		
	</div>

	<div class="myGroupWrapper">
		<div class="myGroupContainer">
			<div class="myGroupHeader">내 모임</div>
			<div class="myGroup">
				<ul class="content">
				<c:forEach items="${bullList}" var="bulletin" varStatus="status">
				<c:choose>
					<c:when test="${sessionScope.userId == bulletin.userId}"> <!-- 내아이디랑 방장 아이디랑 같은경우 -->
					<li> <!--반복문 시작할 부분 -->
						<a href="getBullDetail.do?bullSEQ=${bulletin.bullSEQ}&userId=${sessionScope.userId}" class="groupHref"> <!-- 디테일들어가는 경로 -->
							<div class="groupLeft">${bulletin.categories_Title }</div>
							<div class="groupRight">
								<div class="groupSubject">${bulletin.bullTitle }</div>
								<div class="groupBottomWrapper">
									<div class="groupDate">${bulletin.bullTime}</div>
									<div class="groupMember">${bullEntryCount[status.index].bullEntryCount} / ${bulletin.participants }</div>
								</div>
							</div>
						</a>
					</li> <!-- 반복문 끝날 부분-->
					</c:when>
				</c:choose>	
				</c:forEach>	
				</ul>
			</div>
		</div>
		<div class="myJoinedContainer">
			<div class="myJoinedHeader">가입한 모임</div>
			<div class="myJoined">
				<ul class="content">
					<c:forEach items="${joinBullList}" var="bulletin" varStatus="status">
						<li> <!--반복문 시작할 부분 -->
							<a href="getBullDetail.do?bullSEQ=${bulletin.bullSEQ}&userId=${sessionScope.userId}" class="groupHref"> <!-- 디테일들어가는 경로 -->
								<div class="groupLeft">${bulletin.categories_Title }</div>
								<div class="groupRight">
									<div class="groupSubject">${bulletin.bullTitle }</div>
									<div class="groupBottomWrapper">
										<div class="groupDate">${bulletin.bullTime}</div>		
								 		<div class="groupMember">${bullEntryCount2[status.index].bullEntryCount} / ${bulletin.participants }</div>
										
									</div>
								</div>
							</a>
						</li> <!-- 반복문 끝날 부분-->
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>