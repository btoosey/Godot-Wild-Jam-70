extends Node2D

var targets: Array
var active: bool = false

func _process(_delta):
	position = get_viewport().get_mouse_position()

func _on_cursor_detector_area_area_entered(area):
	targets.append(area.get_parent())

func _on_cursor_detector_area_area_exited(area):
	targets.erase(area.get_parent())

func _input(event):
	if not active:
		return

	if targets.is_empty():
		return
	
	if event.is_action_pressed("left_mouse"):
		targets[0].damage(2)
