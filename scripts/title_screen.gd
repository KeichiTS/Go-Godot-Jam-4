#Code by: KeichiTS - 2023

extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	if GAME.best_time != 0:
		$Transition.play("event1")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_pressed():
	$Sfx.play()
	$Transition.play("event2")
	await $Transition.animation_finished
	GAME.time = 0
	get_tree().change_scene_to_file("res://scenes/Levels/level_1.tscn")
	
###################################################
#     ~ It ain't much, but it's honest work ~     #
###################################################
##        #####################################   #
##          #############################         #
####            ######################            #
#####            #####           #                #
#######                                         ###
#########  #                                   ####
###########                              ## #######
#########      ###               ###       ########
#########     # ###             #####       #######
########      #####             ####         ######
########       ##                ##          ######
#######               ##                    #######
#######  ##           ####            ##      #####
####### #####        ########       #######    ####
########               #####                    ###
#########                                       ###
##########                                       ##
#########                                         #
###################################################
#               ~ KeichiTS - 2023 ~               #
###################################################



func _on_difficulty_button_down():
	print("ok")


func _on_difficulty_pressed():
	print("ok")


func _on_view_opt_item_selected(index):
	if index == 0:
		DIFICULTY.stretch_mode(true)
	if index == 1:
		DIFICULTY.stretch_mode(false)


func _on_dificulty_opt_item_selected(index):
	match  index:
		0:
			DIFICULTY.choose_dificulty(DIFICULTY.dificulty.NORMAL)
		1:
			DIFICULTY.choose_dificulty(DIFICULTY.dificulty.CASUAL)


func _on_options_2_pressed():
	$OptionsAnimation.play("Options")


func _on_ok_pressed():
	$OptionsAnimation.play("Ok")
