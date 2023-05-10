extends StaticBody2D



func _on_hurtbox_body_entered(body):
	if body.is_in_group('player'):
		if body.has_method('_die'):
			body.status = 0 
