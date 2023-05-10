extends Area2D

@export_enum('1', '2') var level: int


func _on_body_entered(body):
	if body.is_in_group('player'):
		match level:
			0:
				get_tree().change_scene_to_file("res://scenes/Levels/level_1.tscn")
			1:
				get_tree().change_scene_to_file("res://scenes/test_map.tscn")
