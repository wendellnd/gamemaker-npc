if(!started) exit

var _messageData = dialogue[messageIndex]
var _message = _messageData.message

// Message not complete
if(characters < string_length(_message)) {
	// Text speed for this frame
	var _textSpeed = textSpeed
	
	var _char = string_char_at(_message, characters)
	
	if(_char == "." || _char == "!" || _char == "," || _char == "?") {
		_textSpeed /= 6
	}

	// Increase character count
	characters+= _textSpeed
} else {
	objNextMessage.image_alpha = 1
	
	// Message complete
	if(keyboard_check_pressed(vk_space)) {
		if(messageIndex + 1 < array_length(dialogue)) {
			next_message()
		} else {
			closeTextbox()
		}
	}
}