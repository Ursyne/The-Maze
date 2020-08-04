extends Camera2D
var speed = .2

func _ready():
	add_to_group("Camera")

func _physics_process(delta):
	position.y += speed
	

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().call_group("Gamestate", "end_game")
		
func _speed_up():
	speed += .125
