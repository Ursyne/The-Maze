extends Node2D

var lives = 5
var Pickaxe = 0
var target_number_of_coins = 10

func _ready():
	add_to_group("Gamestate")
	update_GUI()

func update_GUI():
	get_tree().call_group("GUI", "update_gui", Pickaxe)
	
func Pickaxe_up():
	Pickaxe += 1
	print(Pickaxe)
	update_GUI()

func end_game():
	get_tree().change_scene("res://GameOver.tscn")