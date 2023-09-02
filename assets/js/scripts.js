// Fix Resubmission Form
if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}

// Header Scroll
document.addEventListener("DOMContentLoaded", function () {

	window.addEventListener('scroll', function () {

		if (window.scrollY > 210) {
			document.getElementById('headerScr').classList.add('fixed-top-in');
			document.getElementById('headerScr').classList.remove('fixed-top-out');
			// add padding top to show content behind navbar
			navbar_height = document.querySelector('.navbar');
			document.body.style.paddingTop = navbar_height + 'px';
		} else {
			document.getElementById('headerScr').classList.add('fixed-top-out');
			document.getElementById('headerScr').classList.remove('fixed-top-in');
			// remove padding top from body
			document.body.style.paddingTop = '0';
		}
	});
});


// Preview Image
function previewAdd() {
	frameAdd.src = URL.createObjectURL(event.target.files[0]);
}

function previewEdit(id = "") {
	let editFrame = "frame";
	editFrame = editFrame.concat(id);
	document.getElementById(editFrame).src = URL.createObjectURL(event.target.files[0]);
}

function clearImage() {
	document.getElementById('formFile').value = null;
	frame.src = "";
}

