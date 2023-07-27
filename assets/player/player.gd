extends Sprite2D

@onready var Tilemap : TileMap = get_node("../Tilemap")

func _input(event) -> void:
	if event is InputEventKey and event.is_pressed():
		var keycode_string = OS.get_keycode_string(event.key_label)
		
		if keycode_string == "Kp 8":
			move(Vector2(0, -1))
		elif keycode_string == "Kp 2":
			move(Vector2(0, 1))
		elif keycode_string == "Kp 4":
			move(Vector2(-1, 0))
		elif keycode_string == "Kp 6":
			move(Vector2(1, 0))
		elif keycode_string == "Kp 7":
			move(Vector2(-1, -1))
		elif keycode_string == "Kp 9":
			move(Vector2(1, -1))
		elif keycode_string == "Kp 1":
			move(Vector2(-1, 1))
		elif keycode_string == "Kp 3":
			move(Vector2(1, 1))

func move(displacement :Vector2) -> void:
	var new_position :Vector2 = position + displacement * Const.TILE_SIZE
	
	if Tilemap.get_cell_atlas_coords(1, Tilemap.local_to_map(new_position)) == Vector2i(-1, -1):
		position = new_position
