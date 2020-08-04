extends CanvasLayer

func _physics_process(delta):
	
	if Input.is_action_just_released("ui_accept"):
		$AudioStreamPlayer2.playing = true
		yield(get_tree().create_timer(.3),"timeout")
		get_tree().change_scene("res://Game.tscn")
		
	if Input.is_action_just_released("ui_cancel"):
		$AudioStreamPlayer2.playing = true
		yield(get_tree().create_timer(.3),"timeout")
		get_tree().change_scene("res://MainMenu.tscn")

func _on_Button_pressed():
	$AudioStreamPlayer2.playing = true
	yield(get_tree().create_timer(.3),"timeout")
	get_tree().change_scene("res://Game.tscn")


func _on_Button2_pressed():
	$AudioStreamPlayer2.playing = true
	yield(get_tree().create_timer(.3),"timeout")
	get_tree().change_scene("res://MainMenu.tscn")
