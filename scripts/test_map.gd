#Code by: KeichiTS - 2023

extends Node

var respawn_player = preload('res://scenes/player.tscn')
@export var initial_position = Vector2(24,-24)
@export var lifes : int = 1
var time = GAME.time

func _process(delta):
	time = GAME.time
	$Time.text = "Time: " + str(time)

func _ready():
	$Lifes.text = "Lifes: " + str(lifes)
	$Transition.play("event1")

func reload():
	if lifes > 1: 
		var Player = respawn_player.instantiate()
		Player.global_position = initial_position
		add_child(Player)
		lifes -= 1 
		$Lifes.text = "Lifes: " + str(lifes)
	else: 
		restart_level()
	
func restart_level():
	$Transition.play("event2")
	await $Transition.animation_finished
	get_tree().reload_current_scene()
	
func change_level():
	$Transition.play("event2")
	await $Transition.animation_finished
	
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
