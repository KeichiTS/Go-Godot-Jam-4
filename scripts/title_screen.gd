extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_pressed():
	$Sfx.play()
	$Transition.play("event2")
	await $Transition.animation_finished
	get_tree().change_scene_to_file("res://scenes/Levels/level_1.tscn")
