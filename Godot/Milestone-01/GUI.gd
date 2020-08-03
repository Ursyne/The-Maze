extends CanvasLayer

func _ready():
	add_to_group("GUI")

func update_gui(Pickaxe):
	$Control/HBoxContainer/Label.text = str(Pickaxe)
	pass
