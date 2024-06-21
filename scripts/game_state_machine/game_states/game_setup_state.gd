extends GameState

@onready var next_wave_button = $"../../UI/MainUI/NextWaveButton"
@onready var shop_button = $"../../UI/MainUI/ShopButton"

func enter():
	next_wave_button.visible = true
	shop_button.visible = true

func exit():
	pass

