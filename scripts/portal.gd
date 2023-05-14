#Code by: KeichiTS - 2023

extends Area2D

@export_enum('Level_1', 'Level_2', 'Level_3', 'Level_4', 'Level_5', 'Level_6', 'Level_7',
		'Level_8', 'Level_9', 'Level_10', 'Level_11', 'Level_12', 'Level_13', 'Level_14',
		'Level_15', 'Level_16', 'Level_17', 'Level_18', 'Level_19', 'Level_20') var level: int


func _on_body_entered(body):
	if body.is_in_group('player'):
		$Sfx.play()
		body.queue_free()
		match level:
			0:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_2.tscn")
			1:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_3.tscn")
			2:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_4.tscn")
			3:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_5.tscn")
			4:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_6.tscn")
			5:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_7.tscn")
			6:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_8.tscn")
			7:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_9.tscn")
			8:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_10.tscn")
			9:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_11.tscn")
			10:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_12.tscn")
			11:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_13.tscn")
			12:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_14.tscn")
			13:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_15.tscn")
			14:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_16.tscn")
			15:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_17.tscn")
			16:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_18.tscn")
			17:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_19.tscn")
			18:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				get_tree().change_scene_to_file("res://scenes/Levels/level_20.tscn")
			19:
				_play_anim()
				$anim.play("event")
				await $anim.animation_finished
				GAME.stoped = true
				if GAME.total_deads <= 45: 
					get_tree().change_scene_to_file("res://scenes/final_1.tscn")
				elif GAME.total_deads > 45 and GAME.total_deads <= 70:
					get_tree().change_scene_to_file("res://scenes/final_2.tscn")
				else:
					get_tree().change_scene_to_file("res://scenes/final_3.tscn")
				

func _play_anim():
	get_parent().change_level()

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
