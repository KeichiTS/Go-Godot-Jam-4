extends Area2D



func _ready():
	$anim.play("event")


func _on_body_entered(body):
	if body.is_in_group('player'):
		body.status = 0
