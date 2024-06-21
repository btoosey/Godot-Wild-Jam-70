extends GameState

@onready var enemy_paths = $"../../EnemyPaths"
@onready var cursor_detector = $"../../CursorDetector"
@onready var totem_heads = $"../../TotemHeads"

func enter():
	enemy_paths.spawn_enemy_wave()
	cursor_detector.active = true
	totem_heads.start_firing()

func exit():
	cursor_detector.active = false
	totem_heads.stop_firing()
