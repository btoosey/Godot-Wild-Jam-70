extends Node2D

@onready var game_state_machine: GameStateMachine = $GameStateMachine as GameStateMachine

func _ready():
	game_state_machine.init()

func _on_start_game_button_pressed():
	game_state_machine._on_transition_requested(game_state_machine.current_state, GameState.State.SETUP)

func _on_next_wave_button_pressed():
	game_state_machine._on_transition_requested(game_state_machine.current_state, GameState.State.BATTLE)
