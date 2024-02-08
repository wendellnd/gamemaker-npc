global.res = {
	width: 320,
	height: 180,
	scale: 4
}

var resWidth = global.res.width * global.res.scale
var resHeight = global.res.height * global.res.scale

// Set resolution
surface_resize(application_surface, resWidth, resHeight)

// Window
window_set_size(resWidth, resHeight)

// GUI
display_set_gui_maximize(resWidth, resHeight)

// Center window
var displayWidth = display_get_width()
var displayHeight = display_get_height()

window_set_position(
	displayWidth / 2 - resWidth / 2, 
	displayHeight / 2 - resHeight / 2
)
