extends Node2D

signal totem_direction_activated(head, direction)

@onready var totem_heads: Array = get_children()

func start_firing() -> void:
	for totem_head in totem_heads:
		totem_head.start_firing_timer()

func stop_firing() -> void:
	for totem_head in totem_heads:
		totem_head.stop_firing_timer()

func _on_head_1l_pressed():
	if Globals.cash < totem_heads[0].price:
		return
	Globals.minus_cash(totem_heads[0].price)
	totem_heads[0].ray_cast_left_active = true
	totem_direction_activated.emit(totem_heads[0], "L")

func _on_head_1r_pressed():
	if Globals.cash < totem_heads[0].price:
		return
	Globals.minus_cash(totem_heads[0].price)
	totem_heads[0].ray_cast_right_active = true
	totem_direction_activated.emit(totem_heads[0], "R")

func _on_head_2l_pressed():
	if Globals.cash < totem_heads[1].price:
		return
	Globals.minus_cash(totem_heads[1].price)
	totem_heads[1].ray_cast_left_active = true
	totem_direction_activated.emit(totem_heads[1], "L")

func _on_head_2r_pressed():
	if Globals.cash < totem_heads[1].price:
		return
	Globals.minus_cash(totem_heads[1].price)
	totem_heads[1].ray_cast_right_active = true
	totem_direction_activated.emit(totem_heads[1], "R")

func _on_head_3l_pressed():
	if Globals.cash < totem_heads[2].price:
		return
	Globals.minus_cash(totem_heads[2].price)
	totem_heads[2].ray_cast_left_active = true
	totem_direction_activated.emit(totem_heads[2], "L")

func _on_head_3r_pressed():
	if Globals.cash < totem_heads[2].price:
		return
	Globals.minus_cash(totem_heads[2].price)
	totem_heads[2].ray_cast_right_active = true
	totem_direction_activated.emit(totem_heads[2], "R")

func _on_head_4l_pressed():
	if Globals.cash < totem_heads[3].price:
		return
	Globals.minus_cash(totem_heads[3].price)
	totem_heads[3].ray_cast_left_active = true
	totem_direction_activated.emit(totem_heads[3], "L")

func _on_head_4r_pressed():
	if Globals.cash < totem_heads[3].price:
		return
	Globals.minus_cash(totem_heads[3].price)
	totem_heads[3].ray_cast_right_active = true
	totem_direction_activated.emit(totem_heads[3], "R")

func _on_damage_up_pressed():
	pass # Replace with function body.
