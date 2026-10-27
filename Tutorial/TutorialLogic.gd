extends Node2D

@onready var LT: Label = $LabelTop
@onready var LB: Label = $LabelBottom
@onready var highlights: ColorRect = $Highlights
@onready var timer: ColorRect = $Timer
# all cams
@onready var speed_cam: Camera2D = $Cameras/SpeedCam
@onready var normal_cam: Camera2D = $"Cameras/Normal Cam"
@onready var pour_cam: Camera2D = $Cameras/PourCam
@onready var slider_cam: Camera2D = $Cameras/SliderCam
@onready var hatch_cam: Camera2D = $Cameras/HatchCam

# all buttons
@onready var fuel: Button = $Fuel
@onready var sliders: Button = $Sliders
@onready var speed: Button = $Speed
@onready var radio: Button = $Radio
@onready var hatch: Button = $Hatch

var T = 0

func _ready() -> void:
	normal_cam.enabled = true
	highlights.visible = false
	timer.visible = false
	LT.text = ("Welcome to your new job as a launch controller")
	LB.text = ("")
	fuel.visible = false
	sliders.visible = false
	speed.visible = false
	radio.visible = false
	hatch.visible = false
func _process(delta: float) -> void:
	if T == 0:
		LT.text = ("Welcome to your new job as a launch controller")
		LB.text = ("")
	elif T == 1:
		LT.text = ("")
		LB.text = ("This is where you will be working!")
	elif T == 2:
		highlights.visible = true
		LT.text = ("All buttons highlighted in green are your tasks!")
		LB.text = ("")
	elif T == 3:
		LB.text = ("Tasks are what you need to do before launch!")
	elif T == 4:
		highlights.visible = false
		timer.visible = true
		LT.text = ("Highlighted in green is the launch countdown")
		LB.text = ("")
	elif T == 5:
		LB.text = ("Complete all tasks before zero else things go wrong")
	elif T == 6:
		timer.visible = false
		LT.text = ("Click on a task now for a short explanation")
		LB.text = ("or figure it out later! (they aren't too complicated)")
		fuel.visible = true
		sliders.visible = true
		speed.visible = true
		radio.visible = true
		hatch.visible = true
func _on_button_pressed() -> void:
	T += 1
func _on_speed_pressed() -> void:
	normal_cam.enabled = false
	pour_cam.enabled = false
	slider_cam.enabled = false
	speed_cam.enabled = true
	hatch_cam.enabled = false

func _on_sliders_pressed() -> void:
	normal_cam.enabled = false
	pour_cam.enabled = false
	slider_cam.enabled = true
	speed_cam.enabled = false
	hatch_cam.enabled = false

func _on_hatch_pressed() -> void:
	normal_cam.enabled = false
	pour_cam.enabled = false
	slider_cam.enabled = false
	speed_cam.enabled = false
	hatch_cam.enabled = true
	

	


func _on_fuel_pressed() -> void:
	normal_cam.enabled = false
	pour_cam.enabled = true
	slider_cam.enabled = false
	speed_cam.enabled = false
	hatch_cam.enabled = false
