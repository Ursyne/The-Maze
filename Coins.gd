extends Node2D




func _on_Area2D_body_entered(body):
	get_tree().call_group("Gamestate", "Coin_up")
	$AudioStreamPlayer.play()
	yield(get_tree().create_timer(0.1),"timeout")
	queue_free()
