tool
extends Button

#export(String, FILE) var next_scene_path:= " "

func _on_pressed() -> void:
	get_tree().change_scene("res://src/Levels/LevelTemplate.tscn")

	
func _get_configuration_warning() -> String:
	return "Scene-Path must be set for the button to work"
