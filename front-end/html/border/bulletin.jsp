<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/static/css/Bulll.css">
    <link rel="stylesheet" href="../resources/static/css/headerStyle.css">
    <title>Blue Border</title>
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
    <section class="bull-form">
        <div class="form-content">
            <form>
                <div class="form-group">
                    <label id="formTitle" for="title" value="heloworld">제목</label>
                    <input type="text" id="title" name="title" required>
                </div>
                <div class="form-group">
                    <label id="formCategory" for="category">카테고리</label>
                    <select name="category" id="formSelectCategory">
                        <option value="excurr">비교과</option>
                        <option value="study">스터디</option>
                        <option value="taxi">택시</option>
                        <option value="car">카풀</option>
                        <option value="meal">식사</option>
                        <option value="exer">헬스</option>
                    </select>
                </div>
                <div class="form-group">
                    <label id="formParti" for="participants">인원</label>
                    <input type="number" id="participants" name="participants" min="1" value="1" required>
                </div>
                <div class="form-group">
                    <label id="formFile">파일</label>
                    <label id="formFileInput" for="file">파일 선택</label>
                    <input type="file" id="file" name="file" accept="image/png, image/jpeg">
                </div>
                <div class="form-group">
                    <label id="formContent" for="content">내용</label>
                    <textarea id="content" name="content" rows="8" required></textarea>
                </div>
                <button type="submit">글쓰기</button>
            </form>
        </div>
        
    </section>
    
</body>
</html>
