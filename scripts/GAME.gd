extends Node

var time = 0
var best_time = 0

func _ready():
	$Music.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	time += 1
