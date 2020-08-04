extends Node2D


func _physics_process(delta):
	
	if Input.is_action_just_released("ui_accept"):
		$Button/AudioStreamPlayer2.playing = true
		yield(get_tree().create_timer(.3),"timeout")
		get_tree().change_scene("res://Game.tscn")


func _on_Button_pressed():
	$Button/AudioStreamPlayer2.playing = true
	yield(get_tree().create_timer(.3),"timeout")
	get_tree().change_scene("res://Game.tscn")
	


