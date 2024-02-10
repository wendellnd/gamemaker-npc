if(!instance_exists(objBoxName) || !started) exit

// set font
draw_set_font(ftTextbox)

var _messageData = dialogue[messageIndex]

var _name = _messageData.speaker.name
var _message = _messageData.message
var _image = _messageData.speaker.image

_message = string_copy(_message, 0, characters)

// draw name
draw_text(objBoxName.x, objBoxName.y, _name)

// draw message
var _width = objBoxMessage.sprite_width

draw_text_ext(objBoxMessage.x, objBoxMessage.y, _message, -1, _width)

// draw image
var _centerX = objBoxImage.x + objBoxImage.sprite_width / 2
var _centerY = objBoxImage.y + objBoxImage.sprite_height / 2

var _scaleX = objBoxImage.sprite_width / sprite_get_width(_image)
var _scaleY = objBoxImage.sprite_height / sprite_get_height(_image)

draw_sprite_ext(_image, 0, _centerX, _centerY, _scaleX, _scaleY, 0, -1, 1)
