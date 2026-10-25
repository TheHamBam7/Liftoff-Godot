extends Node2D

@onready var LT: Label = $LabelTop
@onready var LB: Label = $LabelBottom
@onready var highlights: ColorRect = $Highlights
@onready var timer: ColorRect = $Timer


var T = 0

func _ready() -> void:
	highlights.visible = false
	timer.visible = false
	LT.text = ("Welcome to your new job as a launch controller")
	LB.text = ("")
	
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
		LB.text = ("Complete all tasks befroe zero else things go wrong")
	elif T == 6:
		timer.visible = false
		LT.text = ("Click on a task now for a short explanation")
		LB.text = ("or figure it out later! (they aren't to complicated)")
		

func _on_button_pressed() -> void:
	T += 1
