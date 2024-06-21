extends GameState

@onready var start_game_button = $"../../UI/MainUI/StartGameButton"

func enter():
	pass

func exit():
	start_game_button.visible = false
