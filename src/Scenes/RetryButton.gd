extends Button

func _on_pressed() -> void:
	PlayerData.score=0
	get_tree().paused=false
	get_tree().reload_current_scene()

	
func _get_configuration_warning() -> String:
	return "Scene-Path must be set for the button to work"
