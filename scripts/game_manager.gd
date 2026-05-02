extends Node

@onready var hud = get_node("../CanvasLayer")

func _process(delta):
	var player = get_tree().get_first_node_in_group("player")
	
	if player:
		hud.atualizar(player)
