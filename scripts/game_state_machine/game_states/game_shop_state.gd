extends GameState

@onready var shop_button = $"../../UI/MainUI/ShopButton"
@onready var shop_ui = $"../../UI/ShopUI"

func enter():
	shop_button.visible = false
	shop_ui.visible = true

func exit():
	shop_ui.visible = false
