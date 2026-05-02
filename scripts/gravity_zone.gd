extends Area3D

@export var gravity = 4.0

func _on_body_entered(body):
	body.gravity = gravity
