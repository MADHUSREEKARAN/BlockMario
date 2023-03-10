tool
extends Area2D

export var nxt_scene : PackedScene
onready var anim_player:AnimationPlayer = get_node("AnimationPlayer")

func _get_configuration_warning() -> String:
	return "The next scene can't be empty" if not nxt_scene else " "

func teleport()->void:
	anim_player.play("fade_in")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(nxt_scene)
	
	


func _on_body_entered(body: Node) -> void:
	teleport()
