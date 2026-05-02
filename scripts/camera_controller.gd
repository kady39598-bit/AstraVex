extends Camera3D

@export var sens = 0.2
var rot_x = 0

func _input(event):
	if event is InputEventMouseMotion:
		get_parent().rotate_y(deg_to_rad(-event.relative.x * sens))
		
		rot_x -= event.relative.y * sens
		rot_x = clamp(rot_x, -80, 80)
		rotation_degrees.x = rot_x
