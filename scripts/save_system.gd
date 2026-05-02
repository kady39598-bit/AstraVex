extends Node

var caminho = "user://save.json"

func salvar(player):
	var data = {
		"vida": player.vida,
		"xp": player.xp
	}
	
	var file = FileAccess.open(caminho, FileAccess.WRITE)
	file.store_string(JSON.stringify(data))

func carregar(player):
	if not FileAccess.file_exists(caminho):
		return
	
	var file = FileAccess.open(caminho, FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	
	player.vida = data["vida"]
	player.xp = data["xp"]
