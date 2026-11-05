extends Button


func _on_pressed() -> void:
	Audio.click_sound()
	get_tree().change_scene_to_file("res://Scenes/Tutorial.tscn")
