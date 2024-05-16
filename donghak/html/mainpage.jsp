<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../css/mainStyle.css">
	<link rel="stylesheet" href="../css/group.css">
	<link rel="stylesheet" href="../css/headerStyle.css">
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
							<!-- <a href="../loginPage/loginpage.do">
								<button class="headerHamburger">로그인</button>
							</a> -->
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
				<div >
					<h1 style="display:inline;">${sessionScope.userNick} </h1>
					<h2 style="display:inline;">님이</h2>
				</div> 
			</c:otherwise>
		</c:choose> 
		<h2>들어갈 수 있는 모임 수</h2>
		<p>- 00 -</p> <!-- 관순햄 전체 모임 개수 표시해주세요 -->
		<div class="makeGroupWrapper">
			<a href="../mainPage/bulletin.do">
				<button class="makeGroup">모임 만들기</button>
			</a>
		</div>
	</div>
	<div class="contentWrapper">
		<ul class="content">
			<li>
				<a href="" class="groupHref">
					<div class="groupLeft">사진</div>
					<div class="groupRight">
						<div class="groupCategory">스터디</div>
						<div class="groupSubject">컴퓨터구조론 스터디원 급구</div>
						<div class="groupBottomWrapper">
							<div class="groupDate">매주 목요일 10시</div>
							<div class="groupMember">3/5</div>
						</div>
					</div>
				</a>
			</li>
		</ul>
	</div>
</body>
</html>