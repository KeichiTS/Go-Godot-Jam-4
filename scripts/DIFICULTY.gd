extends Node

var speed = 1
var time = 1
var life

enum dificulty{CASUAL, NORMAL}

var choosen_dificulty = dificulty.NORMAL


func stretch_mode(mode : bool):
	if mode:
		get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_CANVAS_ITEMS
	else:
		get_tree().root.content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT


func choose_dificulty(dif):
	if dif == dificulty.NORMAL:
		choosen_dificulty = dif
		speed = 1
		time = 1
	if dif == dificulty.CASUAL:
		choosen_dificulty = dif
		speed = 2
		time = 2
	else:
		speed = 1
		time = 1
