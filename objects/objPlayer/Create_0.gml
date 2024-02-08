event_inherited();

states = {
	idle: {
		left: sprPlayer_Idle_Left,
		right: sprPlayer_Idle_Right,
		up: sprPlayer_Idle_Up,
		down: sprPlayer_Idle_Down
	},
	walk: {
		left: sprPlayer_Walk_Left,
		right: sprPlayer_Walk_Right,
		up: sprPlayer_Walk_Up,
		down: sprPlayer_Walk_Down
	}
}

state = states.idle