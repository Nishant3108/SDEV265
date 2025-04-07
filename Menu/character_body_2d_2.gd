extends CharacterBody2D


func _ready() -> void:
	get_node("Zombie 1").play("Idle")
	get_node("Zombie 2").play("Idle")
	get_node("Zombie 3").play("Idle")
