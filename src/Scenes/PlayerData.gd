extends Node

signal values_updated
signal player_died


var score:=0 setget set_score
var deaths:=0 setget set_deaths

func reset()->void:
	score=0
	deaths=0

func set_score(value: int)->void:
	#PlayerData.score+=1
	score=value
	emit_signal("score_updated")
	
func set_deaths(value1: int)->void:
	#PlayerData.score+=1
	deaths=value1
	emit_signal("Player_died")
	
