extends Node

var hatch = 0

var slider = 0

var speed = 0

var P = 0

var TM = 5

func _on_timer_timeout() -> void:
	TM -= 1
	print(TM)
	
func _process(_delta: float) -> void:
	if TM == 0:
		TimerGlobal.stop()
