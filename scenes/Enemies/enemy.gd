extends CharacterBody2D

var health: int = 20
var max_health: int = 20

func _ready():
	$HealthBar.max_value = max_health
	set_health_bar()

func set_health_bar() -> void:
	$HealthBar.value = health

func damage(value) -> void:
	health -= value
	if health <= 0:
		kill_enemy()
	set_health_bar()

func kill_enemy() -> void:
	queue_free()
