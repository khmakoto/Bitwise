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
		$("#slideTitle" + actualSlide).css("visibility", "hidden");

		actualSlide = (actualSlide + 1) % 4

		$("#slide" + actualSlide).prop("checked", true);
		$("#slideTitle" + actualSlide).css("visibility", "visible");
	}

	$("input:radio[name=slide]").change(function() {
		if($("#slide0").is(":checked")) {
			$("#slideTitle0").css("visibility", "visible");
			$("#slideTitle1").css("visibility", "hidden");
			$("#slideTitle2").css("visibility", "hidden");
			$("#slideTitle3").css("visibility", "hidden");
		}
		else if($("#slide1").is(":checked")) {
			$("#slideTitle0").css("visibility", "hidden");
			$("#slideTitle1").css("visibility", "visible");
			$("#slideTitle2").css("visibility", "hidden");
			$("#slideTitle3").css("visibility", "hidden");
		}
		else if($("#slide2").is(":checked")) {
			$("#slideTitle0").css("visibility", "hidden");
			$("#slideTitle1").css("visibility", "hidden");
			$("#slideTitle2").css("visibility", "visible");
			$("#slideTitle3").css("visibility", "hidden");
		}
		else {
			$("#slideTitle0").css("visibility", "hidden");
			$("#slideTitle1").css("visibility", "hidden");
			$("#slideTitle2").css("visibility", "hidden");
			$("#slideTitle3").css("visibility", "visible");
		}
    });

    $("#slide0").prop("checked", true);
	$("#slideTitle0").css("visibility", "visible");

});

$(document).on("page:load", function(){
	$("#slide0").prop("checked", true);
	$("#slideTitle0").css("visibility", "visible");

	$("input:radio[name=slide]").change(function() {
		if($("#slide0").is(":checked")) {
			$("#slideTitle0").css("visibility", "visible");
			$("#slideTitle1").css("visibility", "hidden");
			$("#slideTitle2").css("visibility", "hidden");
			$("#slideTitle3").css("visibility", "hidden");
		}
		else if($("#slide1").is(":checked")) {
			$("#slideTitle0").css("visibility", "hidden");
			$("#slideTitle1").css("visibility", "visible");
			$("#slideTitle2").css("visibility", "hidden");
			$("#slideTitle3").css("visibility", "hidden");
		}
		else if($("#slide2").is(":checked")) {
			$("#slideTitle0").css("visibility", "hidden");
			$("#slideTitle1").css("visibility", "hidden");
			$("#slideTitle2").css("visibility", "visible");
			$("#slideTitle3").css("visibility", "hidden");
		}
		else {
			$("#slideTitle0").css("visibility", "hidden");
			$("#slideTitle1").css("visibility", "hidden");
			$("#slideTitle2").css("visibility", "hidden");
			$("#slideTitle3").css("visibility", "visible");
		}
    });
});