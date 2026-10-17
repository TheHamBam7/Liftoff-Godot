extends AnimatedSprite2D

var pressed = false

func _process(_delta: float) -> void:
	if Global.TM == 0:
		get_tree().change_scene_to_file("res://Global/main_scene.tscn")

func _on_button_pressed() -> void:
	if pressed == false:
		pressed = true
		%AnimatedSprite2D.play("Hatch")
		$"../Button/Timer".start()
	else:
		pass

func _on_timer_timeout() -> void:
	Global.hatch = 1
	Global.P += 1
	get_tree().change_scene_to_file("res://Global/main_scene.tscn")
