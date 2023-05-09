extends Area2D


func _on_body_entered(body):
	if get_parent().is_in_group('door'):
		get_parent()._open_the_door()

func _on_body_exited(body):
	if get_parent().is_in_group('door'):
		get_parent()._close_the_door()
