function collision(tileX, tileY) {
	// Tiles
	var tilemap = objRoomManager.collisionTilemap
	
	if (tilemap_get(tilemap, tileX, tileY)) { 
		return true
	}
	
	var roomX = to_room(tileX + 0.5)
	var roomY = to_room(tileY + 0.5)
	
	if (position_meeting(roomX, roomY, objCollision)) { 
		return true
	}
	
	if (position_meeting(roomX, roomY, objCharacterParent)) { 
		return true
	}
	
	
	return false
}