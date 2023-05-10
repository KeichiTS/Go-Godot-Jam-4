extends StaticBody2D

var projectile = preload('res://scenes/bullet.tscn')


func _on_timer_timeout():
	var proj = projectile.instantiate()
	proj.global_position = $muzzle.global_position
	get_parent().add_child(proj)
