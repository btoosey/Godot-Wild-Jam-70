class_name GameState
extends Node

enum State {START, SETUP, SHOP, BATTLE_START, BATTLE, BATTLE_END, GAME_OVER}

signal transition_requested(from: GameState, to: State)

@export var state: State

func enter() -> void:
	pass

func exit() -> void:
	pass
