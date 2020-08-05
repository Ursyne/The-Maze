extends Area2D

func _on_SpeedUp_body_entered(body):
	get_tree().call_group("Camera", "_speed_up")
	queue_free()
