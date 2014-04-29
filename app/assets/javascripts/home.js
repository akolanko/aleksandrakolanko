$(document).ready( function (){
	$("#slideshow_container").css("overflow", "hidden");

	$("ul#slides").cycle({
		fx: 'fade',
		pause: .7,
		prev: '#prev',
		next: '#next'
	});
});