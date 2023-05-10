#Code by: KeichiTS - 2023

extends Area2D

@export_enum('Level_1', 'Level_2', 'Level_3', 'Level_4') var level: int


func _on_body_entered(body):
	if body.is_in_group('player'):
		match level:
			0:
				get_tree().change_scene_to_file("res://scenes/Levels/level_2.tscn")
			1:
				get_tree().change_scene_to_file("res://scenes/Levels/level_3.tscn")
			2:
				get_tree().change_scene_to_file("res://scenes/Levels/level_4.tscn")
			3:
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
