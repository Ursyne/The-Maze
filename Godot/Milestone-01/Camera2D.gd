extends Camera2D
var speed = .25

func _physics_process(delta):
	position.y += speed
	

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().call_group("Gamestate", "end_game")
