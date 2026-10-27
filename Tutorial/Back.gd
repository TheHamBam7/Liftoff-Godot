extends Button

@onready var slider_cam: Camera2D = $"../../../Cameras/SliderCam"
@onready var speed_cam: Camera2D = $"../../../Cameras/SpeedCam"
@onready var normal_cam: Camera2D = $"../../../Cameras/Normal Cam"
@onready var pour_cam: Camera2D = $"../../../Cameras/PourCam"
@onready var hatch_cam: Camera2D = $"../../../Cameras/HatchCam"


func _on_pressed() -> void:
	normal_cam.enabled = true
	pour_cam.enabled = false
	slider_cam.enabled = false
	speed_cam.enabled = false
	hatch_cam.enabled = false
