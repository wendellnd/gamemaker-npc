event_inherited();

// Random movement
alarm[0] = 1

path = path_add()
pathNextPoint = 0

pathPointX = 0
pathPointY = 0

// Find path to a point
move_to_point = function(_targetX, _targetY) {
	var _canMove = mp_grid_path(global.AIGrid, path, x, y, _targetX, _targetY, false)
	
	if(_canMove) {
		pathNextPoint = 1
		
		pathPointX = 0
		pathPointY = 0
	}
}