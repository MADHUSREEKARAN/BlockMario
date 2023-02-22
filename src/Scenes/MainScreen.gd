extends Button

func _on_pressed() -> void:
	get_tree().change_scene("res://src/Levels/MainScreen.tscn")

	
func _get_configuration_warning() -> String:
	return "Scene-Path must be set for the button to work"
