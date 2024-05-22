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
	
    <div class="detailBox">
        <div class="titleBox">
            <div class="title" id="bullTitle">${bullDetail.bullTitle}</div>
        </div>
        <div class="contentBox">
   
            <div class="category" id="categories_ID"><h3> 카테고리</h3> : ${bullDetail.categories_Title}</div>
            <div class="member" id="participants"><h3>인원</h3> : ${bullDetail.bullEntryCount} / ${bullDetail.participants}</div>
			<div class="time" id="bullTime"><h3> 일정</h3> : ${bullDetail.bullTime}</div>
            <div class="content" id="content">${bullDetail.content}</div>
      
        </div>
    </div>
	<div class="joinMemList">
		<div class="listTxt">참여자</div>
		<div class="joinMemBox">
			<table>
				<c:forEach items="${entryList}" var="bulletin">
				<tr class="hang" > <!--이부분 반복-->
					<td class="memName" id="usernick">${bulletin.userNick}</td> <!-- 닉네임으로 바꿔 -->
					<td>
						<!-- <a href="#" class="kick" onlick=none>x</a> -->
						<c:choose>
							<c:when test="${bulletin.userId == bullDetail.userId }">
								<h4 class="IsLeader">방장</h4>
							</c:when>
							<c:otherwise> 
								<c:choose>
									<c:when test="${sessionScope.userId == bullDetail.userId}">
										<form action="deleteUser.do" metod ="get" >
											<!-- 삭제할 게시글 번호 -->
											<input type="hidden" name="bullSEQ" value="${bullDetail.bullSEQ}">
											<!-- 삭제할사람아이디 -->
											<input type="hidden" name="userId" value="${bulletin.userId}"> 
											<input type="submit" value="x">
										</form>
									</c:when>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</td>
				</tr> <!--여기까지-->
				</c:forEach>
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
	<!-- <button class="joinBtn">가입하기</button> -->
	<!-- <button class="exitBtn">탈퇴하기</button> -->
	
	<c:choose>
		<c:when test="${sessionScope.userId == bullDetail.userId}"> <!-- 내아이디랑 방장 아이디랑 같은경우 -->
			<button class="joinBtn">모임 해체하기</button>
		</c:when>
		<c:otherwise> <!-- 내아이디랑 방장 아이디랑 다른경우 -->
			<c:choose>
				<c:when test="${myBullChk == 0}">
					<a href="bullEnter.do?bullSEQ=${bullDetail.bullSEQ}&userId=${sessionScope.userId} ">
						<button class="joinBtn">가입하기</button>
					</a> 
				</c:when>
				<c:otherwise> 
					<a href="deleteUser.do?bullSEQ=${bullDetail.bullSEQ}&userId=${sessionScope.userId} ">
						<button  class="exitBtn">탈퇴하기</button>
					</a> 
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
	
	myBullChk
	
		
</body>
</html>