extends Node2D
@onready var click: AudioStreamPlayer2D = $Click
@onready var siren: AudioStreamPlayer2D = $Siren
@onready var explode: AudioStreamPlayer2D = $Explode
@onready var music: AudioStreamPlayer2D = $Music

func click_sound():
	click.play()
	
	
func Siren():
	siren.play()
	
func Siren_stop():
	siren.stop()
	
func explosion():
	explode.play()
	
func _on_music_finished() -> void:
	music.play()
