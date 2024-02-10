global.textboxSequence = -1

function createTextbox(_dialogueArray){
	var _textbox = instance_create_layer(0, 0, "Textbox", objTextbox)
	_textbox.start(_dialogueArray)
	
	var _camX = camera_get_view_x(view_camera[0])
	var _camY = camera_get_view_y(view_camera[0])
	global.textboxSequence = layer_sequence_create("Textbox", _camX, _camY, seqTexbox)
	global.paused = true
}

function closeTextbox() {
	layer_sequence_destroy(global.textboxSequence)
	instance_destroy(objTextbox)
	global.paused = false
	
	// clear space key
	keyboard_clear(vk_space)
}