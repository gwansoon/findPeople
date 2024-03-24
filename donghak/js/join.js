const joinForm = document.querySelector("#join-form")
const inputElements = joinForm.querySelectorAll("input");

function onLoginSubmit(tomato) {
	tomato.preventDefault();
	console.log("hello")
	console.log(inputElements);
	inputElements.forEach(input => console.log(input.value))
	//const result = 백엔드한테 보내고 값을 받아온다.
	if (result === ok) {
		page -> main
	} else if (result === 실패다) (
		alert("실패!")
	)
}

joinForm.addEventListener("submit", onLoginSubmit);