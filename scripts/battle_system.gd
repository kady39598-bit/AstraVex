extends Node

func atacar(atacante, alvo):
	var dano = 10 + atacante.evolucao * 2
	alvo.receber_dano(dano)
