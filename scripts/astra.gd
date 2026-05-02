extends CharacterBody3D
class_name Astra

var nome = ""
var tipo = "terra"
var raridade = "comum"
var vida = 100
var vida_max = 100
var evolucao = 1
var capturado = false

func receber_dano(d):
	vida -= d
	vida = max(vida, 0)
