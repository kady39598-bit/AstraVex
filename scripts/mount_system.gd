extends Node

func velocidade(base, astra):
	match astra.tipo:
		"terra": return base * 1.2
		"agua": return base * 1.3
		"voador": return base * 1.15
	
	return base
