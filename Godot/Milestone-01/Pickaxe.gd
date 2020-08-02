extends Node2D


var taken = false
var coin = 0

func _on_Area2D_body_entered(body):
	
	coin += 1
	hide()  #This isn't removing the node
	print(coin)
	pass
