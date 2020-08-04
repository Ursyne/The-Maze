extends CanvasLayer

func _ready():
	add_to_group("GUI")

func update_gui_pickaxes(pickaxes):
	$Control/Panel/pickaxes.text = str(pickaxes)
	pass

func update_gui_coins(coins):
	$Control/Panel/coins.text = str(coins)
	pass
