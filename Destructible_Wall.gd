extends Area2D

var Health = 2

func _on_Destructible_Wall_area_entered(area):
	if area.is_in_group("Pickaxe"):
		while Health > 0:
			get_tree().call_group("Gamestate", "Pickaxe_hit")
			Health -= 1
			yield(get_tree().create_timer(900), "timeout")
	if Health == 0:
		get_tree().call_group("Gamestate", "Pickaxe_down")
		queue_free()
		
