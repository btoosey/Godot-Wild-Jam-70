extends Path2D

@onready var path_follow_2d = $PathFollow2D
const ENEMY = preload("res://scenes/enemy.tscn")

func _ready():
	spawn_enemy()

func spawn_enemy() -> void:
	var new_enemy = ENEMY.instantiate()
	path_follow_2d.add_child(new_enemy)
