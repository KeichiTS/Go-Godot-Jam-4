extends StaticBody2D



func _close_the_door():
	$anim.play("closing")
	await $anim.animation_finished
	
func _open_the_door():
	print('entrou')
	$anim.play("opening")
	await $anim.animation_finished
