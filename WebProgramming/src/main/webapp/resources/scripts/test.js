// Main function
function build() {
	// loading page
	checkVisilibty();
	// getCurrentLayer
	scrollUponPageReload();

	// Create star background	
	initStarBackground();

	// Init	scroll buttons
	initMoveButtons();

	setTimeout(() => {
		let hashPath = window.location.hash;
		if (hashPath == "#exercise") {
			scrollFunction("down");
		}
	}, 500);
}
build();

function scrollUponPageReload() {

	let options = {
		root: null,
		rootMargin: "20px",
		threshold: 1,
	};


	let observer = new IntersectionObserver(callback, options);

	let upperLayer = document.querySelector('.upper');
	let lowerLayer = document.querySelector('.lower');

	observer.observe(upperLayer);


	function callback(entries, observer) {
		entries.forEach(entry => {
			//			if (entry.isIntersecting) {
			if (entry.intersectionRatio === 1) {
				// Element is in the viewport

			} else {
				// Element is out of the viewport
				upperLayer.scrollIntoView({
					behavior: 'smooth'
				});
			}
		});
	}
};

// Create star background
function initStarBackground() {
	let maxLines = 20;
	let i = 0;

	while (i < maxLines) {
		createLine();
		i++;
	}
};

function createLine() {
	let e = document.createElement('div');
	e.setAttribute('class', 'shooting_star');
	e.style.left = -10 + Math.random() * (50 - 10) * 2.5 + '%';
	e.style.top = -20 + Math.random() * (50 - 20) * 1.5 + '%';
	e.style.animationDelay = 1 + Math.random() * 8 + 's';

	let nightDiv = document.querySelector('.back_layer');
	nightDiv.appendChild(e);
};

// Init scroll buttons
function initMoveButtons() {
	let directionArray = ["up", "down"];
	directionArray.forEach(direction => {
		let scrollButton = document.querySelector(`.${direction}_arrow`);
		scrollButton.onclick = function() {
			scrollFunction(direction);
		};
	});
};

function scrollFunction(direction) {
	let upperSection = document.querySelector(".upper");
	let lowerSection = document.querySelector(".lower");
	hideAllSection()

	if (direction == "up") {
		lowerSection.classList.add("is-hidden");
	} else {
		upperSection.classList.add("is-hidden");
	}
};

function hideAllSection() {
	let upperSection = document.querySelector(".upper");
	let lowerSection = document.querySelector(".lower");

	lowerSection.classList.remove("is-hidden");
	upperSection.classList.remove("is-hidden");
};

function checkVisilibty() {
	let options = {
		root: null,
		rootMargin: "0px",
		threshold: 0,
	};


	let observer = new IntersectionObserver(callback, options);

	let target = document.querySelector(".steering");
	observer.observe(target);

	function callback(entries, observer) {
		entries.forEach(entry => {
			if (entry.isIntersecting) {
				// Element is in the viewport
			} else {
				// Element is out of the viewport
				let loadingpage = document.getElementById("loading_page");
				loadingpage.remove();
			}
		});
	}
};
