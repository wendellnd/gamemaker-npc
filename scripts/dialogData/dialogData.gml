var _speakers = {
	player: {
		name: "Player",
		image: sprPlayer_Idle_Right
	},
	bob: {
		name: "Bob",
		image: sprBob_Idle_Right
	},
	rob: {
		name: "Rob",
		image: sprBob_Idle_Right
	},
	jess: {
		name: "Jess",
		image: sprJess_Idle_Right
	}
}

global.dialogue = {}

global.dialogue.bob_meet = [
	{
		speaker: _speakers.player,
		message: "Hey, there, who are you?"
	},
	{
		speaker: _speakers.bob,
		message: "Oh hi! I'm Bob... And I know who are you."
	},
	{
		speaker: _speakers.player,
		message: "...Oh, how?"
	},
	{
		speaker: _speakers.bob,
		message: "You will find out. You. Will"
	},
	{
		speaker: _speakers.player,
		message: "*shivers*"
	}
]

global.dialogue.rob_monster = [
	{
		speaker: _speakers.rob,
		message: "How are you?"
	},
	{
		speaker: _speakers.rob,
		message: "Did you... happen to see the monster?"
	},
	{
		speaker: _speakers.player,
		message: "Wait... what monster?"
	},
	{
		speaker: _speakers.rob,
		message: "Oh, so you don't know."
	}
]

global.dialogue.jess_help = [
	{
		speaker: _speakers.jess,
		message: "Hey, hey, let's talk later, help me find my glasses first!"
	},
	{
		speaker: _speakers.jess,
		message: "DON'T. STEP. ON. THEM."
	}
]