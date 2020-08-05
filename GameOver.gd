extends CanvasLayer


func _ready():
	$CoinsTotal/Label.text = str(Global.coins)
	
func _physics_process(delta):
	
	yield(get_tree().create_timer(.8),"timeout")
	
	if Input.is_action_just_released("ui_accept"):
		_on_Button_pressed()
		
	if Input.is_action_just_released("ui_cancel"):
		_on_Button2_pressed()

func _on_Button_pressed():
	$AudioStreamPlayer2.playing = true
	yield(get_tree().create_timer(.3),"timeout")
	get_tree().change_scene("res://Game.tscn")

func _on_Button2_pressed():
	$AudioStreamPlayer2.playing = true
	yield(get_tree().create_timer(.3),"timeout")
	get_tree().change_scene("res://MainMenu.tscn")
