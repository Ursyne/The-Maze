extends Node2D

var lives = 3
var coins = 0
var pickaxes = 0

func _ready():
	add_to_group("Gamestate")
	update_GUI()
	
func update_GUI():
	get_tree().call_group("GUI", "update_gui_pickaxes", pickaxes)
	get_tree().call_group("GUI", "update_gui_coins", coins)
	
func Pickaxe_up():
	pickaxes += 1
	update_GUI()

func Pickaxe_down():
	pickaxes -= 1
	update_GUI()
	
func Coin_up():
	coins += 1
	update_GUI()
	
	
func end_game():
	get_tree().change_scene("res://GameOver.tscn")
