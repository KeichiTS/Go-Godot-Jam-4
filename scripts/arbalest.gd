extends StaticBody2D

var projectile = preload('res://scenes/bullet.tscn')
@export var to_the_left = false

func _on_timer_timeout():
	var proj = projectile.instantiate()
	proj.global_position = $muzzle.global_position
	proj.to_the_left_to_the_left = to_the_left
	get_parent().add_child(proj)
