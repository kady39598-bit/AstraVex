extends Node

@export var area: Node3D
var tempo = 0

func _process(delta):
	tempo -= delta
	if tempo <= 0:
		spawnar()
		tempo = randf_range(3,8)

func spawnar():
	var scene = preload("res://astra.tscn")
	var a = scene.instantiate()
	
	a.global_position = area.global_position + Vector3(randf()*20,0,randf()*20)
	
	get_tree().current_scene.add_child(a)
	
	get_node("/root/VariationSystem").gerar_variacao(a)
