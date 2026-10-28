extends Button

func _on_pressed() -> void:
	Audio.click_sound()
	if Global.speed == 0:
		get_tree().change_scene_to_file("res://Speedometer/speed.tscn")
	else:
		pass
