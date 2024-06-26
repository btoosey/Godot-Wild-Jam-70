extends Control

@onready var damage_up = $DamageUp
@onready var fire_rate_up = $FireRateUp

@onready var totem_head_shop_buttons: Array = [$Head1L, $Head1R, $Head2L, $Head2R, $Head3L, $Head3R, $Head4L, $Head4R]
@onready var head_price_labels: Array = [$Head1LPrice, $Head1RPrice, $Head2LPrice, $Head2RPrice, $Head3LPrice, $Head3RPrice, $Head4LPrice, $Head4RPrice]
@onready var totem_heads = [$"../../TotemHeads/TotemHead", $"../../TotemHeads/TotemHead2", $"../../TotemHeads/TotemHead3", $"../../TotemHeads/TotemHead4"]
@onready var cash_label = $Cash

var head_price: int = 10

func _ready():
	update_price_text()
	update_cash_label()

func _on_totem_heads_totem_direction_activated(head, direction):
	if head == totem_heads[0]:
		if direction == "L":
			totem_head_shop_buttons[0].visible = false
			head_price_labels[0].visible = false
			update_head_price()
		elif direction == "R":
			totem_head_shop_buttons[1].visible = false
			head_price_labels[1].visible = false
			update_head_price()
	elif head == totem_heads[1]:
		if direction == "L":
			totem_head_shop_buttons[2].visible = false
			head_price_labels[2].visible = false
			update_head_price()
		elif direction == "R":
			totem_head_shop_buttons[3].visible = false
			head_price_labels[3].visible = false
			update_head_price()
	elif head == totem_heads[2]:
		if direction == "L":
			totem_head_shop_buttons[4].visible = false
			head_price_labels[4].visible = false
			update_head_price()
		elif direction == "R":
			totem_head_shop_buttons[5].visible = false
			head_price_labels[5].visible = false
			update_head_price()
	elif head == totem_heads[3]:
		if direction == "L":
			totem_head_shop_buttons[6].visible = false
			head_price_labels[6].visible = false
			update_head_price()
		elif direction == "R":
			totem_head_shop_buttons[7].visible = false
			head_price_labels[7].visible = false
			update_head_price()
	update_cash_label()

func update_head_price() -> void:
	head_price += 2
	for head in totem_heads:
		head.price += 2
	update_price_text()

func update_price_text() -> void:
	for label in head_price_labels:
		label.text = str(head_price)

func update_cash_label() -> void:
	cash_label.text = str(Globals.cash)
