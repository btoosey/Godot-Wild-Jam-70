extends Node2D

@onready var enemy_paths: Array = get_children()

func spawn_enemy_wave() -> void:
	for path in enemy_paths:
		path.spawn_enemy()
