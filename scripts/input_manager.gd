extends Node

var move_vector = Vector2.ZERO

func _process(delta):
	move_vector = Vector2.ZERO
	
	if Input.is_action_pressed("move_forward"):
		move_vector.y -= 1
	if Input.is_action_pressed("move_back"):
		move_vector.y += 1
	if Input.is_action_pressed("move_left"):
		move_vector.x -= 1
	if Input.is_action_pressed("move_right"):
		move_vector.x += 1
