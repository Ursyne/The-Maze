extends CanvasLayer

func _ready():
	add_to_group("GUI")

func update_gui_pickaxes(pickaxes):
	$Control/HBoxContainer/pickaxes.text = str(pickaxes)
	pass

func update_gui_coins(coins):
	$Control/HBoxContainer/coins.text = str(coins)
	pass
