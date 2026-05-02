extends CharacterBody3D

@export var speed = 6.0

func _physics_process(delta):
	var dir = Vector3.ZERO
	
	if Input.is_action_pressed("move_forward"):
		dir.z -= 1
	if Input.is_action_pressed("move_back"):
		dir.z += 1
	if Input.is_action_pressed("move_left"):
		dir.x -= 1
	if Input.is_action_pressed("move_right"):
		dir.x += 1
	
	dir = dir.normalized()
	velocity = dir * speed
	
	move_and_slide()
