<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/singup_style.css">
</head>
<body>
    <section class="signin-form">
        <h1>  logo  </h1>
        <form action>
            <div class="int-area">
                <input type ="text" name ="id" autocomplete="off" required>
                <label for ="id"> 이름</label>
            </div >
            <div class="int-area">
                <input type="text" name="pw" autocomplete="off" required >
                <label for="password">비밀번호</label>
            </div>
            <div class="int-area">
                <input type="text" name="pwck" auticomplete="off"required >
                <label for = "pwcheck">비밀번호 확인</label>
            </div>
            <!--<div>-->
                <div class="int-area">
                    <input type="text" name="fk"auticomplete="off"required >
                    <label for ="fakename">닉네임</label> 
                </div>
            <!--</div>-->
            <div = class="int-area">
                <input type="text"name="ph"autiocomplete="off"required >
                <label for="phnumber">번호</label>
            </div>
            <div class="int-area">
                <b>생년월일</b>
                <div class="field birth">
                    <input type="number" placeholder="년(4자)">                
                    <select>
                        <option value="">월</option>
                        <option value="">1월</option>
                        <option value="">2월</option>
                        <option value="">3월</option>
                        <option value="">4월</option>
                        <option value="">5월</option>
                        <option value="">6월</option>
                        <option value="">7월</option>
                        <option value="">8월</option>
                        <option value="">9월</option>
                        <option value="">10월</option>
                        <option value="">11월</option>
                        <option value="">12월</option>
                    </select>
                    <input type="number" placeholder="일">
                </div>
            </div>
            <div class="memberinfo_radio">
                <b>성별</b>
                <span>
                    <input type="radio" id="female"name="gender"value="female">
                    <label for="female" style="font-size: 18px; color: #1a1919;">여성</label>
                </span>
                <span>
                    <input type="radio" id=male name="gender"value="male">
                    <label for="male" style="font-size: 18px; color: #1a1919;">남성</label>
                </span>
            </div>
            <div class="btn-area">
				<button type="submit">LOGIN</button>
            </div>
            
    



        </form>
    </section>

    
</body>
</html>