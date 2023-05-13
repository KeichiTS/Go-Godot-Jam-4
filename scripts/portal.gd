#Code by: KeichiTS - 2023

extends Area2D

@export_enum('Level_1', 'Level_2', 'Level_3', 'Level_4', 'Level_5', 'Level_6', 'Level_7',
		'Level_8', 'Level_9', 'Level_10', 'Level_11', 'Level_12', 'Level_13', 'Level_14',
		'Level_15', 'Level_16', 'Level_17', 'Level_18', 'Level_19', 'Level_20') var level: int


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
				get_tree().change_scene_to_file("res://scenes/Levels/level_5.tscn")
			4:
				get_tree().change_scene_to_file("res://scenes/Levels/level_6.tscn")
			5:
				get_tree().change_scene_to_file("res://scenes/Levels/level_7.tscn")
			6:
				get_tree().change_scene_to_file("res://scenes/Levels/level_8.tscn")
			7:
				get_tree().change_scene_to_file("res://scenes/Levels/level_9.tscn")
			8:
				get_tree().change_scene_to_file("res://scenes/Levels/level_10.tscn")
			9:
				get_tree().change_scene_to_file("res://scenes/Levels/level_11.tscn")
			10:
				get_tree().change_scene_to_file("res://scenes/Levels/level_12.tscn")
			11:
				get_tree().change_scene_to_file("res://scenes/Levels/level_13.tscn")
			12:
				get_tree().change_scene_to_file("res://scenes/Levels/level_14.tscn")
			13:
				get_tree().change_scene_to_file("res://scenes/Levels/level_15.tscn")
			14:
				get_tree().change_scene_to_file("res://scenes/Levels/level_16.tscn")
			15:
				get_tree().change_scene_to_file("res://scenes/Levels/level_17.tscn")
			16:
				get_tree().change_scene_to_file("res://scenes/Levels/level_18.tscn")
			17:
				get_tree().change_scene_to_file("res://scenes/Levels/level_19.tscn")
			18:
				get_tree().change_scene_to_file("res://scenes/Levels/level_20.tscn")
			19:
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
