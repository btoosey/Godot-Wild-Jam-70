extends GameState

@onready var enemy_paths = $"../../EnemyPaths"
@onready var cursor_detector = $"../../CursorDetector"

func enter():
	enemy_paths.spawn_enemy_wave()
	cursor_detector.active = true

func exit():
	cursor_detector.active = false
