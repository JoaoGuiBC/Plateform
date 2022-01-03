function AnimateUpAndDown(){
	if isIncreasingHeight {
		yHeight -= 0.1;
	} else {
		yHeight += 0.1;
	}

	y += yHeight;

	show_debug_message(yHeight);

	if yHeight <= -0.75 {
		isIncreasingHeight = false;
	}
	if yHeight >= 0.75 {
		isIncreasingHeight = true;
	}
}