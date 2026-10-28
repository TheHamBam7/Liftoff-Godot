extends Node

var hatch = 0

var slider = 0

var speed = 0

var fuel = 0

var P = 0

var TM = 30

var TMS = false

var StartTime = 0

var EndTime = 0

var TotalTime = 0

var done = false

var restart = false

var RestartRequired = false

func _on_timer_timeout() -> void:
	if TMS == false:
		TM -= 1
		print(TM)
	else:
		pass
	
func _process(_delta: float) -> void:
	if TM == 0:
		TimerGlobal.stop()
	
	if TM >= 0 and restart == true:
		print("restart timer")
		TimerGlobal.start()
		restart = false
func speed_clock_start():
		StartTime = Time.get_ticks_msec()
	
func speed_clock_stop():
		EndTime = Time.get_ticks_msec()
		var duration_msec = EndTime - StartTime
		var seconds = duration_msec / 1000
		var msec = duration_msec % 1000
		TotalTime = "%d.%03d" % [seconds, msec]

func load_finish():
	await get_tree().create_timer(1).timeout
	get_tree().current_scene.get_node("Control/TimeNmbr").text = str(TotalTime)
	
	
	
func reset():
	restart = true
	hatch = 0
	slider = 0
	speed = 0
	fuel = 0
	P = 0
	TM = 30
	TMS = false
	StartTime = 0
	EndTime = 0
	TotalTime = 0
	done = false
	get_tree().change_scene_to_file("res://Global/main_menu.tscn")
