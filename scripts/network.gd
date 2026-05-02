extends Node

func host():
	var peer = ENetMultiplayerPeer.new()
	peer.create_server(7777)
	multiplayer.multiplayer_peer = peer

func join(ip):
	var peer = ENetMultiplayerPeer.new()
	peer.create_client(ip,7777)
	multiplayer.multiplayer_peer = peer
