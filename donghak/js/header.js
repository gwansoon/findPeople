const hamburger = document.querySelector(".headerHamburger");

function onClickHamburger() {
	const hamburgerList = document.querySelector(".hamburgerListWrapper");
	if (hamburgerList.style.display !== 'block') {
		hamburgerList.style.display = 'block';
	}
	else {
		hamburgerList.style.display = 'none';
	}
}

hamburger.addEventListener("click", onClickHamburger)