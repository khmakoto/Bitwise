$(document).ready(function(){
	setInterval(moveSlider, 5000);

	function moveSlider(){
		var actualSlide;

		if($("#slide0").is(":checked")) {
			actualSlide = 0;
		}
		else if($("#slide1").is(":checked")) {
			actualSlide = 1;
		}
		else if($("#slide2").is(":checked")) {
			actualSlide = 2;
		}
		else {
			actualSlide = 3;
		}

		$("#slide" + actualSlide).prop("checked", false);

		actualSlide = (actualSlide + 1) % 4

		$("#slide" + actualSlide).prop("checked", true);
	}
});