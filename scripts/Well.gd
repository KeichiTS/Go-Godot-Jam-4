extends Area2D


func _on_body_entered(body):
	if body.is_in_group('player'):
		if body.has_method('_die'):
			body.status = 0
	else:
		if body.is_in_group('dead_body'):
			body.queue_free()
