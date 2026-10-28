extends Node2D

@onready var control: Control = $Control



func _ready() -> void:
	Global.load_finish()
	$Control.visible = false
	await get_tree().create_timer(2).timeout
	var tween = create_tween()
	$Control.visible = true
	tween.tween_property(control, "modulate:a", 1, 4)\
	.from(0.0)

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Global/main_menu.tscn")
