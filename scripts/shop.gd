extends Control

var moedas = 1000

var itens = {
	"pocao": 100,
	"reviver": 500
}

func comprar(item):
	if moedas >= itens[item]:
		moedas -= itens[item]
