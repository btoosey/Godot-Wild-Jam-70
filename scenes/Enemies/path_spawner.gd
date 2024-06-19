extends Path2D

const ENEMY_FOLLOW_PATH_1 = preload("res://scenes/Enemies/Follow Paths/enemy_follow_path_1.tscn")

func spawn_enemy() -> void:
	var new_enemy = ENEMY_FOLLOW_PATH_1.instantiate()
	add_child(new_enemy)
