extends Button

func _on_pressed() -> void:
	TimerGlobal.timeout.connect(Global._on_timer_timeout)
	get_tree().change_scene_to_file("res://Global/main_scene.tscn")
