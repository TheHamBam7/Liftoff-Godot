extends AnimatedSprite2D

var CF = frame

var win =  0

func _process(_delta: float) -> void:
	CF = frame
	$"../Label".text = str(win)
	if Input.is_action_just_pressed("Press"):
		if CF >= 26 and CF <= 43:
			win += 1
		else:
			win = 0
	elif win == 5:
		get_tree().change_scene_to_file("res://Global/main_scene.tscn")
