extends Button

func _pressed():
	var player = get_tree().get_first_node_in_group("player")
	if player:
		player.montar_auto()
