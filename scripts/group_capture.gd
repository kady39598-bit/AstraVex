extends Node

func grupo(astra, jogadores):
	for j in jogadores:
		if randf() < 0.3:
			j.astras.append(astra)
