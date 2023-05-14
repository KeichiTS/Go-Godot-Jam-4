#Code by: KeichiTS - 2023

extends Node


func _ready():
	$Transition.play("event1")
	if GAME.time < GAME.best_time:
		GAME.best_time = GAME.time
	
	$time.text = "Your time: " + str(GAME.time) + "s"
	$best_time.text = "Record: " + str(GAME.best_time) + "s"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_again_pressed():
	$Sfx.play()
	$Transition.play("event2")
	await $Transition.animation_finished
	get_tree().change_scene_to_file("res://scenes/plot_screen.tscn")

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
