class_name TotemHead
extends Node2D

@onready var firing_interval = $FiringInterval
@export var damage: int = 5
var price: int = 10

@onready var ray_cast_left = $RayCastLeft
var ray_cast_left_active = false

@onready var ray_cast_right = $RayCastRight
var ray_cast_right_active = false

func _ready():
	ray_cast_left.collide_with_areas = true
	ray_cast_right.collide_with_areas = true

func start_firing_timer() -> void:
	firing_interval.start()

func stop_firing_timer() -> void:
	firing_interval.stop()

func _on_firing_interval_timeout():
	# Damage enemy by damage
	if ray_cast_left_active and ray_cast_left.is_colliding():
		var target_enemy = ray_cast_left.get_collider().get_parent()
		target_enemy.damage(damage)

	if ray_cast_right_active and ray_cast_right.is_colliding():
		var target_enemy = ray_cast_right.get_collider().get_parent()
		target_enemy.damage(damage)

func increase_damage() -> void:
	damage += 5

func decrease_fire_rate() -> void:
	if firing_interval.wait_time > 0.2:
		firing_interval.wait_time -= 0.2
