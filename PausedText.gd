extends Label

func _input(event):
	if Input.is_action_just_pressed("ui_home"):
		get_tree().paused = not get_tree().paused
		visible = not visible
		
