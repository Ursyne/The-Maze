extends KinematicBody2D

var motion = Vector2(0,0)
const SPEED = 300
const UP = Vector2(0,-1)

func _physics_process(delta):

	if Input.is_action_pressed("Left") and not Input.is_action_pressed("Right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("Right") and not Input.is_action_pressed("Left"):
		motion.x =  SPEED
	elif Input.is_action_pressed("Down") and not Input.is_action_pressed("Up"):
		motion.y = SPEED
	elif Input.is_action_pressed("Up") and not Input.is_action_pressed("Down"):
		motion.y = -SPEED
	else: 
		motion.x = 0
		motion.y = 0
		
	move_and_slide(motion)
