class_name TotemHead
extends Node2D

@onready var firing_interval = $FiringInterval
@export var damage: int

@onready var ray_cast_left = $RayCastLeft
var ray_cast_left_active = false

@onready var ray_cast_right = $RayCastRight
var ray_cast_right_active = false

func _ready():
	ray_cast_left.collide_with_areas = true

func start_firing_timer() -> void:
	firing_interval.start()

func stop_firing_timer() -> void:
	firing_interval.stop()

func _on_firing_interval_timeout():
	# Damage enemy by damage
	pass
