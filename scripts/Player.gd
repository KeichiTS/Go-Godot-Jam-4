#Code by: KeichiTS - 2023


extends CharacterBody2D


@export var speed : int = 150.0
@export var jump_velocity : int = -400.0
@export var gravity : int = 2000

enum{on_ground, on_air}
var move_status = on_ground

enum{dead,alive}
var status = alive

var is_holding = false 
var can_hold = false

var dead_body = preload('res://scenes/dead_body.tscn')
var object = preload('res://scenes/carrying_object.tscn')

var time = 5

func _ready():
	$anim.play("idle")
	$carrying_sprite.hide()
	$sprite.show()

func _physics_process(delta):
	_move(delta)
	_chance_anim()
	_die()
	_restart()
	
	if can_hold and !is_holding:
		if Input.is_action_just_pressed('carrying'):
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
	



func _move(x):
	if not is_on_floor():
		move_status = on_air
		velocity.y += gravity * x
	else: 
		move_status = on_ground
		
	if status == alive:
		if Input.is_action_just_pressed("ui_jump") and is_on_floor():
			velocity.y = jump_velocity

		var direction = Input.get_axis("ui_left", "ui_right")
		if direction:
			velocity.x = direction * speed
		else:
			velocity.x = move_toward(velocity.x, 0, speed)

			
	move_and_slide()
	
func _chance_anim():
	if status == alive:
			if move_status == on_ground and velocity.x == 0:
				$anim.play("idle")
			elif move_status == on_ground and velocity.x != 0:
				$anim.play('walking')
			elif move_status == on_air:
				$anim.play("Jumping")
			
			if velocity.x > 0: 
				$sprite.scale.x = 1 
				$carrying_sprite.scale.x = 1
			elif velocity.x ==0:
				pass
			else:
				$sprite.scale.x = -1
				$carrying_sprite.scale.x = -1


func _die():
	if status == dead:
		if get_parent().has_method("reload"):
			$anim.play("dying")
			get_parent().reload()
			var body = dead_body.instantiate()
			body.global_position = global_position
			get_parent().add_child(body)
			queue_free()
			if is_holding:
				var obj = object.instantiate()
				obj.global_position = $".".position + Vector2(0,-20)
				get_parent().add_child(obj)
			
func _restart():
	if Input.is_action_just_pressed('restart'):
		status = dead
		


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
