extends Node

var elementos = ["fogo","agua","sombra","luz","eletrico","arcano"]

func gerar_variacao(astra):
	astra.tipo_elemento = elementos.pick_random()
	
	if randf() < 0.01:
		astra.shiny = true
