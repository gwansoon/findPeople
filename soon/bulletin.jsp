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
					<a class="headerTitle" href="mainPage/main.do">FindPeople</a>
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
					<button class="headerHamburger">&#9776;</button>
				</div>
			</div>
		</nav>
	</div> <!-- header end -->
    <section class="bull-form">
        <div class="form-content">
            <form action="insertBull.do" method = "POST"> <!-- 폼테그 경로 지정해 관순아 -->
                <div class="form-group">
                    <label id="formTitle" for="title">제목</label>
                    <input type="text" id="title" name="bullTitle" required>
                </div>
                <div class="form-group">
                    <label id="formCategory" for="category">카테고리</label>
                    <select name="categories_ID" id="formSelectCategory">
                        <option value=1>비교과</option>
                        <option value=2>스터디</option>
                        <option value=3>택시</option>
                        <option value=4>카풀</option>
                        <option value=5>식사</option>
                        <option value=6>헬스</option>
                    </select>
                </div>
                <div class="form-group">
                    <label id="formParti" for="participants">인원</label>
                    <input type="number" id="participants" name="participants" min="1" value="1" required>
                </div>
                <!-- <div class="form-group">
                    <label id="formFile">파일</label>
                    <label id="formFileInput" for="file">파일 선택</label>
                    <input type="file" id="file" name="bullFile" accept="image/png, image/jpeg">
                </div> -->
                <div class="form-group">
                    <label id="formContent" for="content">내용</label>
                    <textarea id="content" name="content" rows="8" required></textarea>
                </div>
                <div>
                	<input type="hidden" name="userId" value="${sessionScope.userNick}">
                </div>
                <button type="submit">글쓰기</button>
            </form>
        </div>
        
    </section>
    
</body>
</html>
