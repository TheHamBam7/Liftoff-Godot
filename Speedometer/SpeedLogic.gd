extends AnimatedSprite2D

var CF = frame

var win =  0

func _process(_delta: float) -> void:
	CF = frame
	$"../Label".text = str(win)
	if Input.is_action_just_pressed("Press"):
		if CF >= 22 and CF <= 44:
			win += 1
		else:
			win = 0
	elif win == 5:
		Global.P += 1
		Global.speed = 1
		get_tree().change_scene_to_file("res://Global/main_scene.tscn")
	
	if Global.TM == 0:
		get_tree().change_scene_to_file("res://Global/main_scene.tscn")
