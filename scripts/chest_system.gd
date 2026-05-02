extends Node

var total = 50
var coletados = []

func coletar(id):
	if id in coletados:
		return
	coletados.append(id)
