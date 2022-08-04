const picture = document.querySelector('#picture');
let photos = document.querySelectorAll('.product_gallery-photo');
console.log(photos);
$('.product_gallery-photo').on('mouseenter', 'img', function (){
	const img_src = $(this).attr('src');
	picture.src = img_src;
})

$(document).ready(function(){
	$('.zoom').hover(function() {
		$(this).addClass('transition');
	}, function() {
		$(this).removeClass('transition');
	});
});
