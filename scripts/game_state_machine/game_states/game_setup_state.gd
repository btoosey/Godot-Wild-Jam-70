extends GameState

@onready var next_wave_button = $"../../MainUI/NextWaveButton"

func enter():
	next_wave_button.visible = true

func exit():
	next_wave_button.visible = false
