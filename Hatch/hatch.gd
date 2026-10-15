extends Button

func _on_pressed() -> void:
	if Global.hatch == 0:
		get_tree().change_scene_to_file("res://Hatch/hatch.tscn")
		print(Global.P)
	else:
		pass
		print("pass hatch")
