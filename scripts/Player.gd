#Code by: KeichiTS - 2023


extends CharacterBody2D


@export var speed : int = 150.0
@export var jump_velocity : int = -400.0
@export var gravity : int = 2000

var coyote_jump = false

enum{on_ground, on_air}
var move_status = on_ground

enum{dead,alive}
var status = alive

var is_holding = false 
var can_hold = false

var dead_body = preload('res://scenes/dead_body.tscn')
var object = preload('res://scenes/carrying_object.tscn')

var time = 5

var play_dead_sound = false 



func _ready():
	
	if DIFICULTY.choosen_dificulty == DIFICULTY.dificulty.NORMAL:
		time = 5
	if DIFICULTY.choosen_dificulty == DIFICULTY.dificulty.CASUAL:
		time = 999
		
	$canvas/countdown.text = str(time)
	
	
	$anim.play("idle")
	$carrying_sprite.hide()
	$sprite.show()

func _physics_process(delta):
	_move(delta)
	_chance_anim()
	_die()
	_restart()
	_holding_status()
	_restart_level()

func _move(x):
	if status != dead:
		if not is_on_floor():
			move_status = on_air
			velocity.y += gravity * x
		else: 
			move_status = on_ground
			
		if status == alive:
			if is_on_floor() or coyote_jump:
				if Input.is_action_just_pressed("ui_jump"):
					$Sfx/jump.play()
					velocity.y = jump_velocity
					coyote_jump = false

			var direction = Input.get_axis("ui_left", "ui_right")
			if direction:
				velocity.x = direction * speed
			else:
				velocity.x = move_toward(velocity.x, 0, speed)
		
		var was_on_floor = is_on_floor()
		
		
		move_and_slide()
		
		var left_ground = not is_on_floor() and was_on_floor
		if left_ground and velocity.y >= 0:
			print("pulou")
			coyote_jump = true
			$CoyoteTime.start()
	
func _chance_anim():
	if status == alive:
			if move_status == on_ground and velocity.x == 0:
				$anim.play("idle")
			elif move_status == on_ground and velocity.x != 0:
				$anim.play('walking')
			elif move_status == on_air:
				$anim.play("Jumping")
			
			if velocity.x > 0: 
				$sprite.scale.x = 0.5
				$carrying_sprite.scale.x = 0.5
			elif velocity.x ==0:
				pass
			else:
				$sprite.scale.x = -0.5
				$carrying_sprite.scale.x = -0.5

func _die():
	if status == dead and play_dead_sound == false:
		play_dead_sound = true
		if get_parent().has_method("reload"):
			$anim.play("dying")
			await $anim.animation_finished
			get_parent().reload()
			var body = dead_body.instantiate()
			body.global_position = global_position
			get_parent().add_child(body)
			GAME.total_deads += 1
			queue_free()
			if is_holding:
				var obj = object.instantiate()
				obj.global_position = $".".position + Vector2(0,-20)
				get_parent().add_child(obj)
			
func _restart():
	if Input.is_action_just_pressed('restart'):
		status = dead

func _holding_status():
	if can_hold and !is_holding:
		if Input.is_action_just_pressed('carrying'):
			$Sfx/item.play()
			is_holding = true
			$sprite.hide()
			$carrying_sprite.show()
	
	if !can_hold and is_holding:
		if Input.is_action_just_pressed('carrying'):
			is_holding = false
			$sprite.show()
			$carrying_sprite.hide()
			var obj = object.instantiate()
			obj.global_position = $".".position
			get_parent().add_child(obj)


func _restart_level():
	if Input.is_action_just_pressed('restart_level'):
		get_parent().restart_level()

func _on_item_detector_body_entered(body):
	if body.is_in_group('objects') and !is_holding:
		can_hold = true
		body.can_hold = true 


func _on_item_detector_body_exited(body):
	if body.is_in_group('objects'):
		can_hold = false
		body.can_hold = false

func _on_dead_timer_timeout():
	if time == 1:
		status = dead
	else: 
		time -= 1
		$canvas/countdown.text = str(time)

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


func _on_coyote_time_timeout():
	coyote_jump = false
