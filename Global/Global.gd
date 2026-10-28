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

func _on_timer_timeout() -> void:
	if TMS == false:
		TM -= 1
		print(TM)
	else:
		pass
	
func _process(_delta: float) -> void:
	if TM == 0:
		TimerGlobal.stop()
		
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
