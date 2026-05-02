extends Control

var itens = {}

func adicionar(nome):
	if not itens.has(nome):
		itens[nome] = 0
	
	itens[nome] += 1
