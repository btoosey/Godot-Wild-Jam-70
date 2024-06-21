extends GameState

@onready var next_wave_button = $"../../UI/MainUI/NextWaveButton"
@onready var enemy_paths = $"../../EnemyPaths"
@onready var cursor_detector = $"../../CursorDetector"
@onready var totem_heads = $"../../TotemHeads"

func enter():
	next_wave_button.visible = false
	enemy_paths.spawn_enemy_wave()
	cursor_detector.active = true
	totem_heads.start_firing()

func exit():
	cursor_detector.active = false
	totem_heads.stop_firing()
