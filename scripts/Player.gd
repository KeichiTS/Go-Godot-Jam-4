extends CharacterBody2D


@export var speed : int = 150.0
@export var jump_velocity : int = -400.0
@export var gravity : int = 2000

enum{on_ground, on_air}
var move_status = on_ground

enum{dead,alive}
var status = alive

func _physics_process(delta):
	move(delta)

func move(x):
	if not is_on_floor():
		velocity.y += gravity * x

	if status == alive:
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = jump_velocity

		var direction = Input.get_axis("ui_left", "ui_right")
		if direction:
			velocity.x = direction * speed
		else:
			velocity.x = move_toward(velocity.x, 0, speed)
		
	move_and_slide()
	
func chance_anim():
	pass
