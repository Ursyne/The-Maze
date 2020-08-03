extends Area2D

var Health = 3

func _on_Destructible_Wall_area_entered(area):
	if area.is_in_group("Pickaxe"):
		while Health > 0:
			Health -= 1
			yield(get_tree().create_timer(.5), "timeout")
			print(Health)
	if Health == 0:
		get_tree().call_group("Gamestate", "Pickaxe_down")
		queue_free()
		
