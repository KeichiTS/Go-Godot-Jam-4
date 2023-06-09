#Code by: KeichiTS - 2023

extends Area2D

var opening = false

func _on_body_entered(body):
	if body.is_in_group('player') and body.is_holding == true: 
		body.is_holding = true
		body._holding_status()
		$AnimatedSprite2D.play("active")
		
	if body.is_in_group('objects'):
		$Sfx.play()
		opening = true
		body.queue_free()
		if get_parent().is_in_group('door'):
			get_parent()._open_the_door()
			
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
