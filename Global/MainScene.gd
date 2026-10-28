extends Node2D
var exploded = false
var timeout = false
var flash = false
func _ready() -> void:
	clock()
	$DoneButton.visible = false
	$Launch.visible = false
	$Explosion.visible = false
	$SlidersDone.visible = false
	$"HatchDone".visible = false
	$SpeedDone.visible = false
	$Explosion.visible = false
	$Failure.visible = false
	$FuelDone.visible = false
	$Failure/Failure.visible = false
	$CanvasModulate.visible = false
func _process(_delta: float) -> void:
	if Global.RestartRequired == true:
		get_tree().reload_current_scene()
		Global.RestartRequired = false
	if Global.slider == 1:
		$SlidersDone.visible = true
	else:
		pass
		
	if Global.hatch == 1:
		$"HatchDone".visible = true
	else:
		pass
		
	if Global.speed == 1:
		$SpeedDone.visible = true
	else:
		pass
	
	if Global.fuel == 1:
		$FuelDone.visible = true
	else:
		pass
	
	
	if Global.TM == 0 and exploded == false:
		Audio.Siren()
		$Explosion.visible = true
		$Hatch.visible = false
		$Slider.visible = false
		$Speed.visible = false
		$Fuel.visible = false
		exploded = true
		await get_tree().create_timer(3).timeout
		Audio.Siren_stop()
		Audio.explosion()
		timeout = true
		$Failure.visible = false
		$Explosion.visible = true
		$Explosion.play("Explosion")
		await get_tree().create_timer(1).timeout
		$DoneButton.visible = true
	else:
		pass
	
	if Global.TM == 0 and flash == false:
		flash = true
		print("flash")
		$Failure.visible = true
		await get_tree().create_timer(.5).timeout
		$Failure.visible = false
		await get_tree().create_timer(.5).timeout
		$Failure.visible = true
		await get_tree().create_timer(.5).timeout
		$Failure.visible = false
		await get_tree().create_timer(.5).timeout
		$Failure.visible = true
		await get_tree().create_timer(.5).timeout
		$Failure.visible = false
		await get_tree().create_timer(.5).timeout
		$Failure/Failure.visible = true
		flash = false
		
	else:
		pass
	
	if timeout == true:
		$CanvasModulate.visible = true
	else:
		pass
		
		
		
	


func _on_liftoff_pressed() -> void:
	if Global.P == 4:
		Global.speed_clock_stop()
		Global.TMS = true
		$Launch.visible = true
		$Launch.play("default")
		$Explosion.visible = false
		$SlidersDone.visible = false
		$"HatchDone".visible = false
		$SpeedDone.visible = false
		$Explosion.visible = false
		$Failure.visible = false
		$FuelDone.visible = false
		await get_tree().create_timer(4).timeout
		get_tree().change_scene_to_file("res://Liftoff.tscn")
		

func clock():
	if Global.done == false:
		Global.speed_clock_start()
		Global.done = true


func _on_done_button_pressed() -> void:
	pass # Replace with function body.
