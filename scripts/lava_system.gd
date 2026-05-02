extends Node

func aplicar(player, delta):
	if player.na_lava and not player.montaria:
		player.vida -= 20 * delta
