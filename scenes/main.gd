extends Node2D

@onready var game_state_machine: GameStateMachine = $GameStateMachine as GameStateMachine

func _ready():
	game_state_machine.init()
