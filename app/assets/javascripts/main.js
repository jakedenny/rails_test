$('.greeting').on('click', function() { 
	if ($('.greeting').html() == "Hey gurl!") {
		$('.greeting').html("Hey dude!");
	} else {
		$('.greeting').html("Hey gurl!");
	}
});