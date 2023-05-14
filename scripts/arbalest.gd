#Code by: KeichiTS - 2023

extends StaticBody2D

var projectile = preload('res://scenes/bullet.tscn')
@export var to_the_left = false
@export var time_to_shoot : int = 1 


func _ready():
	if DIFICULTY.choosen_dificulty == DIFICULTY.dificulty.CASUAL:
		time_to_shoot = 5
	
	$Timer.wait_time = time_to_shoot

func _on_timer_timeout():
	$Sfx.play()
	var proj = projectile.instantiate()
	proj.global_position = $muzzle.global_position
	proj.to_the_left_to_the_left = to_the_left
	get_parent().add_child(proj)


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
