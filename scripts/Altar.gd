extends Area2D

var opening = false

func _on_body_entered(body):
	if body.is_in_group('player') and body.is_holding == true: 
		body.is_holding = true 
		body._holding_status()
		
	if body.is_in_group('objects'):
		opening = true
		body.queue_free()
