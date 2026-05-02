extends Node3D

var coletado = false

func abrir():
	if coletado:
		return
	
	coletado = true
	print("Loot encontrado")
