extends Node2D


func _ready():
	$AnimatedSprite.play("Idle")
	$Damage/CollisionShape2D.disabled = true
	$BlockMovement/CollisionShape2D.disabled = true
	yield(get_tree().create_timer(2.5),"timeout")
	
	$AnimatedSprite.play("SpikeMove")
	$Damage/CollisionShape2D.disabled = false
	$BlockMovement/CollisionShape2D.disabled = false
	yield(get_tree().create_timer(.1),"timeout")
	
	$AnimatedSprite.play("SpikeOut")
	$Damage/CollisionShape2D.disabled = true
	$BlockMovement/CollisionShape2D.disabled = false
	yield(get_tree().create_timer(1),"timeout")
	_ready()


func _on_Area2D_body_entered(body):
	get_tree().call_group("Gamestate", "end_game")
	
	
