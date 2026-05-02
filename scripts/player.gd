extends CharacterBody3D

var vida = 100
var xp = 0
var astras = []
var montaria = null

var em_queda = false
var na_agua = false
var na_lava = false

func _ready():
	add_to_group("player")

func montar_auto():
	var tipo = "terra"
	
	if em_queda:
		tipo = "voador"
	elif na_agua:
		tipo = "agua"
	elif na_lava:
		tipo = "fogo"
	
	for a in astras:
		if a.tipo == tipo:
			montaria = a
			return

func adicionar_astra(a):
	astras.append(a)
