extends RigidBody2D

var can_hold = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if can_hold == true: 
		if Input.is_action_just_pressed("carrying"):
			$timer.start()

func _on_timer_timeout():
	queue_free()
