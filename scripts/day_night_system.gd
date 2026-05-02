extends Node

@export var light: DirectionalLight3D
var tempo = 0

func _process(delta):
	tempo += delta * 0.05
	light.rotation_degrees.x = tempo * 360
