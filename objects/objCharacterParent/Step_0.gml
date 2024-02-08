// Input
if (inputX != 0 || inputY != 0) {
	if(!moving) {
		// Prever X over Y
		if (inputX != 0) inputY = 0
		
		// New position
		var newTileX = to_tile(x) + inputX
		var newTileY = to_tile(y) + inputY
		
		// Collision
		var _collision = collision(newTileX, newTileY)
		if (!_collision) {
			targetX = to_room(newTileX + 0.5)
			targetY = to_room(newTileY + 0.5)
			
			moving = true
		} else {
			moveDirection = point_direction(0, 0, inputX, inputY)
		}
	}
}
// Move
if(moving) {
	set_state(states.walk)

	var distance = point_distance(x, y, targetX, targetY)

	if(distance > moveSpeed) {
		x += sign(targetX - x) * moveSpeed
		y += sign(targetY - y) * moveSpeed
		
		moveDirection = point_direction(x, y, targetX, targetY)
	} else {
		x = targetX
		y = targetY

		moving = false
	}
} else {
	set_state(states.idle)
}

sprite_index = get_sprite(moveDirection)