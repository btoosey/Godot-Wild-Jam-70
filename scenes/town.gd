extends Node2D

@onready var health_bar = $HealthBar

var destroyed: bool = false
var health: int = 20
var cash_back: int = 10

func _ready():
	health_bar.max_value = health
	set_health_bar()

func set_health_bar() -> void:
	health_bar.value = health

func _on_area_2d_area_entered(area):
	damage(1)
	area.get_parent().kill_enemy()

func damage(value) -> void:
	health -= value
	if health <= 0:
		destroy_town()
	set_health_bar()

func destroy_town() -> void:
	destroyed = true
	health_bar.visible = false
	health = 0
	cash_back = 0

func earn_cash_back() -> void:
	Globals.cash += cash_back
