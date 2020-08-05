extends KinematicBody2D

var motion = Vector2(0,0)
const SPEED = 100
const UP = Vector2(0,-1)
var Facing_Direction = ""
var paused = false

func _ready():
	add_to_group("Player")
	
func _physics_process(delta):
	Pickaxe()

	if Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -SPEED
		motion.y = 0
		get_node("Character").set_flip_h(true)
		$Character.play("run")
		Facing_Direction = "Horizontal"
	elif Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		motion.x =  SPEED
		motion.y = 0
		get_node("Character").set_flip_h(false)
		$Character.play("run")
		Facing_Direction = "Horizontal"
	elif Input.is_action_pressed("ui_down") and not Input.is_action_pressed("ui_up"):
		motion.y = SPEED
		motion.x =  0
		$Character.play("run")
		Facing_Direction = "Vertical"
	elif Input.is_action_pressed("ui_up") and not Input.is_action_pressed("ui_down"):
		motion.y = -SPEED
		motion.x = 0
		$Character.play("run")
		Facing_Direction = "Vertical"
	else: 
		motion.x = 0
		motion.y = 0
		$Character.play("idle")
		
	move_and_slide(motion)


func Pickaxe():
	if Input.is_action_just_pressed("ui_accept") && Global.pickaxes > 0:
		$Character.play("attack")
		if Facing_Direction == "Horizontal":
			$AttackArea_Horizontal/CollisionShape2D.disabled = false
		if Facing_Direction == "Vertical":
			$AttackArea_Vertical/CollisionShape2D.disabled = false
	else:
		$AttackArea_Horizontal/CollisionShape2D.disabled = true
		$AttackArea_Vertical/CollisionShape2D.disabled = true
