event_inherited();

states = {
	idle: {
		left: sprJess_Idle_Left,
		right: sprJess_Idle_Right,
		up: sprJess_Idle_Up,
		down: sprJess_Idle_Down
	},
	walk: {
		left: sprJess_Walk_Left,
		right: sprJess_Walk_Right,
		up: sprJess_Walk_Up,
		down: sprJess_Walk_Down
	}
}

state = states.idle