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

