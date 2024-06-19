extends PathFollow2D

var run_speed: int = 40

func _process(delta):
	set_progress(get_progress() + run_speed * delta)
