extends Camera2D
var motion  = Vector2(0,0)
var speed = 1

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	
	position.y += speed

	pass
