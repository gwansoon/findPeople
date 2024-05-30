
function isEnglish(username) {
	// 영어만 포함되어 있는지 확인하는 정규 표현식
	var regex = /^[A-Za-z0-9_.]{3,15}$/;
	return regex.test(username);
}

function validateId(event) {
	// 기본 폼 제출을 막음
	//event.preventDefault(); // 의미를 모르겠음 일단 주석처리
	var inputElement = document.getElementById("userId");
	var inputValue = inputElement.value;
	
	if (isEnglish(inputValue)) {
		return true;
	} else {
		if (inputValue == "") {
			return false;
		}
		console.log("아이디 체크")
		document.getElementById("myModal").style.display = "block";
		inputElement.value = "";
		return false;
	}
}

function isTel(usertel) {
	var regex = /^[0-9]{11}$/;
	return regex.test(usertel);
}

function validateTel(event) {
	var inputElement = document.getElementById("userTel");
	var inputValue = inputElement.value;
	console.log(inputValue);
	
	if (isTel(inputValue)) {
		console.log("ture!");
		return true;
	} else {
		if (inputValue == "") {
			return false;
		}
		document.querySelector(".modal h3").innerHTML = "전화번호";
		document.querySelector(".modal p").innerHTML = "전화번호 형식: 숫자 11자";
		document.getElementById("myModal").style.display = "block";
		inputElement.value = "";
		return false;
	}
}

function isAge(userage) {
	var regex = /^[0-9]{1,2}$/;
	return regex.test(userage);
}

function validateAge(event) {
	var inputElement = document.getElementById("userAge");
	var inputValue = inputElement.value;
	console.log(inputValue);
	
	if (isAge(inputValue)) {
		console.log("ture!");
		return true;
	} else {
		if (inputValue == "") {
			return false;
		}
		document.querySelector(".modal h3").innerHTML = "나이";
		document.querySelector(".modal p").innerHTML = "나이 형식: 숫자만 2글자까지";
		document.getElementById("myModal").style.display = "block";
		inputElement.value = "";
		return false;
	}
}

function isClassNum(userclassnum) {
	var regex = /^[0-9]{8}$/;
	return regex.test(userclassnum);
}

function validateClassNum(event) {
	var inputElement = document.getElementById("userClassNum");
	var inputValue = inputElement.value;
	console.log(inputValue);
	
	if (isClassNum(inputValue)) {
		console.log("ture!");
		return true;
	} else {
		if (inputValue == "") {
			return false;
		}
		document.querySelector(".modal h3").innerHTML = "학번";
		document.querySelector(".modal p").innerHTML = "학번 형식: 숫자만 8글자";
		document.getElementById("myModal").style.display = "block";
		inputElement.value = "";
		return false;
	}
}

// 아이디 예외처리
document.getElementById("userId").addEventListener("blur", validateId);
// 아이디 형식: 영문자, 숫자, 밑줄(_),점(.), 3~15자의 문자열

// 전화번호 예외처리
document.getElementById("userTel").addEventListener("blur", validateTel);

// 나이 예외처리
document.getElementById("userAge").addEventListener("blur", validateAge);

// 학번 예외처리
document.getElementById("userClassNum").addEventListener("blur", validateClassNum);

// 모달 대화 상자 닫기
document.getElementsByClassName("close")[0].addEventListener("click", function() {
	document.getElementById("myModal").style.display = "none";
});


