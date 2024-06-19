extends Node2D

@onready var totem_heads: Array = get_children()

func start_firing() -> void:
	for totem_head in totem_heads:
		totem_head.start_firing_timer()

func stop_firing() -> void:
	for totem_head in totem_heads:
		totem_head.stop_firing_timer()
