extends Node2D


func _ready():
	add_to_group("Gamestate")
	update_GUI()
	
func update_GUI():
	get_tree().call_group("GUI", "update_gui_pickaxes", Global.pickaxes)
	get_tree().call_group("GUI", "update_gui_coins", Global.coins)
	
func Pickaxe_up():
	Global.pickaxes += 1
	$Pickaxes/PickaxeSound.play()
	update_GUI()

func Pickaxe_down():
	Global.pickaxes -= 1
	$Walls/Destroy.play()
	update_GUI()
	
func Coin_up():
	Global.coins += 1
	
	update_GUI()
	
func end_game():
	get_tree().change_scene("res://GameOver.tscn")
