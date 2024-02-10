var _len = TILESIZE
var _dir = moveDirection

var _facingCellX = x + lengthdir_x(_len, _dir)
var _facingCellY = y + lengthdir_y(_len, _dir)

var _npc = instance_position(_facingCellX, _facingCellY, objNPCParent)

if (_npc != noone && !instance_exists(objTextbox)) {
	_npc.showMessageIcon = true
	
	if(keyboard_check_pressed(vk_space)) {
		createTextbox(_npc.defaultDialogue)

		// Make NPC face the player
		_npc.moveDirection = point_direction(_npc.x, _npc.y, x, y)
	}
	
}