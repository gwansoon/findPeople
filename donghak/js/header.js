const hamburger = document.querySelector(".headerHamburger");

function onClickHamburger() {
	// hamburger 아이콘 클릭시 선택 메뉴 on-off
	const hamburgerList = document.querySelector(".hamburgerListWrapper");
	if (hamburgerList.style.display !== 'block') {
		hamburgerList.style.display = 'block';
	}
	else {
		hamburgerList.style.display = 'none';
	}
}

hamburger.addEventListener("click", onClickHamburger)