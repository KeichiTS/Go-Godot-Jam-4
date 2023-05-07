extends RigidBody2D

var chasing = true
@onready var target = get_parent().get_node('Player')


func _process(delta):
	target = get_parent().find_child('Player')
	print(target)
	if chasing == true and target != null:
		global_position = target.global_position
	



func _on_carrying_area_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	print(target)
	var target = body
	if Input.is_action_pressed("carrying"):
		chasing = true 
		print('entrou')
