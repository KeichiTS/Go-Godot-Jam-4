extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Plot_anim.play("event")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_skip_pressed():
	$Transition.play("event2")
	await  $Transition.animation_finished
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")
