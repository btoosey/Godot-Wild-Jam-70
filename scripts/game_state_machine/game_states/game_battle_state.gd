extends GameState

@onready var enemy_paths = $"../../EnemyPaths"

func enter():
	enemy_paths.spawn_enemy_wave()

func exit():
	pass
