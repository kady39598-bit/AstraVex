extends Node

func tentar(astra, player):
	if astra.capturado:
		return false
	
	var chance = calcular(astra)
	
	if randf() < chance:
		astra.capturado = true
		player.adicionar_astra(astra)
		astra.queue_free()
		return true
	
	return false

func calcular(a):
	var base = 0.2
	base += (1.0 - a.vida / a.vida_max) * 0.5
	
	if a.raridade == "mitico":
		base -= 0.2
	
	return clamp(base, 0.05, 0.9)
