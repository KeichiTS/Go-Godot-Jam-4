#Code by: KeichiTS - 2023

extends Area2D

var body_counts = 0

func _on_body_entered(body):
	if body_counts == 0:
		print(get_parent().name)
		if get_parent().is_in_group('door'):
			get_parent()._open_the_door()
			$AnimatedSprite2D.play("inactive")
	body_counts += 1

func _on_body_exited(body):
	body_counts -= 1
	if body_counts == 0:
		if get_parent().is_in_group('door'):
			get_parent()._close_the_door()
		$AnimatedSprite2D.play("active")
		
		
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
