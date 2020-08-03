extends CanvasLayer

func _ready():
	add_to_group("GUI")

func update_gui(Pickaxe):
	$Control/Label.text = str(Pickaxe)
	pass
