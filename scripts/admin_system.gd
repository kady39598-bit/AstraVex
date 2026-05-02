extends Node

func teleport(player, pos):
	player.global_position = pos

func invisivel(player, estado):
	player.visible = not estado
