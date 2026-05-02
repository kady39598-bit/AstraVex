extends Control

var inimigo
var player

func iniciar(p, e):
	player = p
	inimigo = e
	visible = true

func atacar():
	if inimigo:
		inimigo.receber_dano(15)

func capturar():
	get_node("/root/CaptureSystem").tentar(inimigo, player)
