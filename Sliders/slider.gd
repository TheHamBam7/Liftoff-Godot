extends Button

func _on_pressed() -> void:
	if Global.slider == 0:
		get_tree().change_scene_to_file("res://Sliders/sliders.tscn")
	else:
		pass
