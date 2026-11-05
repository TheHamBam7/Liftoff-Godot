extends Button

func _on_pressed() -> void:
	Audio.click_sound()
	if Global.fuel == 0:
		get_tree().change_scene_to_file("res://Scenes/fuel.tscn")
	else:
		pass
