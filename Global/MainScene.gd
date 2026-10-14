extends Node2D
var exploded = false
var timeout = false
var flash = false
func _ready() -> void:
	$SlidersDone.visible = false
	$"HatchDone".visible = false
	$SpeedDone.visible = false
	$Explosion.visible = false
	$Failure.visible = false
	$Failure/Failure.visible = false
	$CanvasModulate.visible = false

func _process(_delta: float) -> void:
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
	
	if Global.TM == 0 and exploded == false:
		exploded = true
		await get_tree().create_timer(3).timeout
		timeout = true
		$Failure.visible = false
		$Explosion.visible = true
		$Explosion.play("Explosion")
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
	
	
