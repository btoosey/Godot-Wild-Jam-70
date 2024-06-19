extends Path2D

@onready var path_follow_2d = $PathFollow2D
const ENEMY = preload("res://scenes/Enemies/enemy.tscn")


func spawn_enemy() -> void:
	var new_enemy = ENEMY.instantiate()
	path_follow_2d.add_child(new_enemy)
