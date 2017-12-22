$(document).ready(function(){
	//$('.row-box').each(slideIn());
	/*var all_row_box = document.querySelectorAll('#row-box');
	var timeout_counter = 1000;
	$('.row-box').animate({'opacity': 1}, 1500);
	for(i=0; i<all_row_box.length; i++){
		setTimeout(slideIn(all_row_box[i]), 10000);
		console.log(i);
		timeout_counter = timeout_counter + 1000;
	};
	perform();*/
	/*var row_box = $('.row-box');
	row_box.addClass('slide-in');*/

	var timeout_counter = 0;
	var array = [].slice.call(document.querySelectorAll("#row-box"));
	for(i=0; i<array.length; i++){
		var counter = timeout_counter + "s";
		var value = "come-in 1s " + counter + " ease forwards";
		slideIn(array[i]);
		$(array[i]).css("animation", value);
		timeout_counter = timeout_counter + 0.1;
	}

});


function slideIn(object){
	var temp_object = $(object);
	temp_object.addClass('slide-in');
}
