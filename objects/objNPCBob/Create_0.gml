event_inherited();

states = {
	idle: {
		left: sprBob_Idle_Left,
		right: sprBob_Idle_Right,
		up: sprBob_Idle_Up,
		down: sprBob_Idle_Down
	},
	walk: {
		left: sprBob_Walk_Left,
		right: sprBob_Walk_Right,
		up: sprBob_Walk_Up,
		down: sprBob_Walk_Down
	}
}

state = states.idle