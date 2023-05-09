#Code by: KeichiTS - 2023

extends StaticBody2D
var door_open = false
var open_status = false

func _process(delta):
	if door_open == true and open_status == false :
		$anim.play('opening')
		await $anim.animation_finished
		open_status = true
	
	elif door_open == false and open_status == true : 
		$anim.play('closing')
		await $anim.animation_finished
		open_status = false


func _close_the_door():
	door_open = false
	
func _open_the_door():
	door_open = true 
