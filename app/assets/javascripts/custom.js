$(document).on("turbolinks:load", function(){
	slideInExecution();

	$('.button_to').mouseenter(function(){
		$(this).addClass('hover');
	});
	$('.button_to').mouseleave(function(){
		$(this).removeClass('hover');
	});

	$('.nav-selection').mouseenter(function(){
		$(this).addClass('hover');
	});
	/*$('.nav-selection').mouseleave(function(){
		$(this).removeClass('hover');
	});*/
});


function slideInExecution(){
	var timeout_counter = 0;
	var array = [].slice.call(document.querySelectorAll("#row-box"));
	for(i=0; i<array.length; i++){
		var counter = timeout_counter + "s";
		var value = "come-in 1s " + counter + " ease forwards";
		slideIn(array[i]);
		$(array[i]).css("animation", value);
		timeout_counter = timeout_counter + 0.1;
	};
}

function slideIn(object){
	var temp_object = $(object);
	temp_object.addClass('slide-in');
}
