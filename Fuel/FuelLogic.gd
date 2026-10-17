extends Node2D

var started = false

var loop = false

var fuel = 0

var fuelTarget = 41

var fail = false

var win = false

# how this is going to work is animation of pouring idk abt liquid but its just pouring adds 1s to the total
# if you are close to the total when you stop it will say perfect and go to menu, if not it will restart
# it wont stop at full it will let you stop. Its hold and stop not hold stop hold stop.


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	$FuelTank.frame = fuel
	if started == true and loop == false and fail == false and win == false:
		loop = true
		await get_tree().create_timer(0.03).timeout
		fuel += 1
		print(fuel)
		$Label.text = str(fuel)
		loop = false
	
	if fuel >= 40:
		fuel = 0
	
	
	
	if Global.TM == 0:
		get_tree().change_scene_to_file("res://Global/main_scene.tscn")


func _on_button_button_down() -> void:
	if started == false and fail == false and win == false:
		started = true
		

		


func _on_button_button_up() -> void:
	if started == true and fuel <= 35:
		started = false
		fuel = 0
		fail = true
	if started == true and fuel >= 35:
		fail = false
		win = true
		started = false
		Global.P += 1
		Global.fuel = 1
		await get_tree().create_timer(1).timeout
		get_tree().change_scene_to_file("res://Global/main_scene.tscn")
