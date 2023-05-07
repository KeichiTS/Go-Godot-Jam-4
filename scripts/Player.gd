extends CharacterBody2D


@export var speed : int = 150.0
@export var jump_velocity : int = -400.0
@export var gravity : int = 2000

enum{on_ground, on_air}
var move_status = on_ground

enum{dead,alive}
var status = alive

func _ready():
	$anim.play("idle")

func _physics_process(delta):
	_move(delta)
	_chance_anim()
	
	

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
			elif velocity.x ==0:
				pass
			else:
				$sprite.scale.x = -1
