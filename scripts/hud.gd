extends CanvasLayer

@onready var hp = $HealthBar
@onready var xp = $XPBar

func atualizar(player):
	hp.value = player.vida
	xp.value = player.xp
