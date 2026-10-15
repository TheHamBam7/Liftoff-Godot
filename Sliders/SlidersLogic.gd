extends Node2D

var S1V = 50

var S2V = 90

var S3V = 8

var time_started = false

@onready var timer: Timer = $Timer


func _on_slider_1_value_changed(value: float) -> void:
	S1V = value
	

func _on_slider_2_value_changed(value: float) -> void:
	S2V = value


func _on_slider_3_value_changed(value: float) -> void:
	S3V = value

func _process(_delta: float) -> void:
	if S1V >= 99 and S2V >= 99 and S3V >= 99:
		if time_started == true:
			pass
		else: $Timer.start()
		time_started = true
		$HoldSlidersThere.visible = true
	elif time_started == true and S1V >= 99 and S2V >= 99 and S3V >= 99:
			pass
	elif time_started == true or S1V <= 99 or S2V <= 99 or S3V <= 99:
		$Timer.stop()
		print("stop")
		time_started = false
		$HoldSlidersThere.visible = false

	if Global.TM == 0:
		get_tree().change_scene_to_file("res://Global/main_scene.tscn")


func _on_timer_timeout() -> void:
	Global.P += 1
	Global.slider = 1
	get_tree().change_scene_to_file("res://Global/main_scene.tscn")
