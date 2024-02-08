// Reached path point
if(pathNextPoint > 0 && x == pathPointX && y == pathPointY) {
	// Go to next point
	pathNextPoint++
	
	// Path is over
	if(pathNextPoint >= path_get_number(path)) {
		pathNextPoint = 0
	}
}