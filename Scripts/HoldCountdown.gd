extends RichTextLabel

func _process(_delta: float) -> void:
	$".".text = str(ceil($"../../Timer".time_left))
