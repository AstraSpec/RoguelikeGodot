extends Node2D

func _input(event) -> void:
	if event is InputEventKey and event.is_pressed():
		var keycode_string = OS.get_keycode_string(event.key_label)
		
		if keycode_string == "Escape":
			get_tree().quit()
