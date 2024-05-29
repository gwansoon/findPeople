<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../resources/static/css/mainPage/detail.css?after">
    <link rel="stylesheet" href="../resources/static/css/headerStyle.css">
	<link rel="stylesheet" href="../../css/mainPage/detail.css?after">
    <link rel="stylesheet" href="../../css/headerStyle.css">
    <title>Detail</title>
</head>
<body>

<%
	String userid = (String)session.getAttribute("userId");
	if(userid == null){
	%>
		<script>
			alert("로그인 후 이용해주세요");
			location.href='../loginPage/loginpage.do';
		</script>
	
	<%
	}
	%>
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
		<div class="memListWrapper">

			<div class="listTxt">참여자</div>
			<div class="joinMemBox">
				<table>
					<c:forEach items="${entryList}" var="bulletin">
						<tr> <!--이부분 반복-->
							<td class="row">
								<div class="memName" id="usernick">test</div>
								<c:choose>
									<c:when test="${bulletin.userId == bullDetail.userId }">
										<div class="IsLeader">방장</div>
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${sessionScope.userId == bullDetail.userId}">
												<form action="deleteUser.do" metod ="get">
													<!-- 삭제할 게시글 번호 -->
													<input type="hidden" name="bullSEQ" value="${bullDetail.bullSEQ}">
													<!-- 삭제할사람아이디 -->
													<input type="hidden" name="userId" value="${bulletin.userId}"> 
													<input class="kick" type="submit" value="x">
												</form>
											</c:when>
										</c:choose>
									</c:otherwise>
								</c:choose>
							</td>
						</tr> <!--여기까지-->
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="waitList">
			<div>
				이름
			</div>
			<div>
				전공
			</div>
			<div>
				학번
			</div>
			<div>

			</div>
		</div>
	</div>
	
	<div class="commentGrid">
		<div class="text">
		    댓글
		</div>
		<c:choose>
				<c:when test="${myBullChk == 0}">
				<div class="noJoinText">
					<br>
					<h3>모임에 가입 후 댓글을 확인하세요!</h3>
				</div>
				</c:when>
				<c:otherwise>
					<div class="commentBox"> 	
						<form action="insertComment.do" metod="POST">
							<div class="commentWrtieBox" id="comment_content">
								<textarea class="commentWrite" placeholder="댓글을 입력하세요." id="comment" name="comment" rows="2" required></textarea>
							</div>
							<div class="commentWrtieBtnWrapper" id="comment_author">
							    <input type="hidden" name="userId" value="${sessionScope.userId}">
			                	<input type="hidden" name="bullSEQ" value="${bullDetail.bullSEQ}">
			                
								<button type="submit" class="submit">글쓰기</button>
							</div>
						</form>
					</div> 
					<c:forEach items="${commentList}" var="bulletin" >
						<div class="commentBox"> <!--댓글 여기 반복하심 됩니다.-->
							<div class="commentBoxHeader">
								<div class="commentName" id="comment_author">${bulletin.userNick}
								</div> 
								<c:choose>
									<c:when test="${sessionScope.userId == bulletin.userId}">
										<form action="deleteComment.do" metod ="get">
											<input type="hidden" name="userId" value="${sessionScope.userId}">
											<input type="hidden" name="bullSEQ" value="${bullDetail.bullSEQ}">	
											<input type="hidden" name="commentSEQ" value="${bulletin.commentSEQ}">
											<input class="deleteCommentBtn" type="submit" value="댓글삭제">
										</form>
									</c:when>
								</c:choose>
							</div>
							<div class="comment" id="comment_content">${bulletin.comment}</div>
						</div> <!--여기까지.-->
					</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	
	
	<c:choose>
		<c:when test="${sessionScope.userId == bullDetail.userId}"> <!-- 내아이디랑 방장 아이디랑 같은경우 -->
			<a href="deleteBull.do?bullSEQ=${bullDetail.bullSEQ}&userId=${sessionScope.userId} ">
				<button class="clearBtn">모임 해체하기</button>
			</a>
		</c:when>
		<c:otherwise> <!-- 내아이디랑 방장 아이디랑 다른경우 -->
			<c:choose>
				<c:when test="${myBullChk == 0}"> <!-- if(entry return이 = 0인 경우  -> 가입되지 않은 경우){ -->
					<c:choose>
						<c:when test="${bullDetail.bullEntryCount == bullDetail.participants}">
							<button class="joinBtn">정원 모집 마감</button>
						</c:when>
						<c:otherwise>
							<a href="bullEnter.do?bullSEQ=${bullDetail.bullSEQ}&userId=${sessionScope.userId} ">
								<button class="joinBtn">가입하기</button>
							</a> 
						</c:otherwise>
					</c:choose>
				</c:when>
				<c:otherwise> 
					<a href="deleteUser.do?bullSEQ=${bullDetail.bullSEQ}&userId=${sessionScope.userId} ">
						<button  class="exitBtn">탈퇴하기</button>
					</a> 
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
		
</body>
</html>