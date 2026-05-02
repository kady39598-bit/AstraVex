extends Node

var estados = ["sol","chuva","magico"]
var atual = "sol"

func mudar():
	atual = estados.pick_random()
	print("Clima:", atual)
