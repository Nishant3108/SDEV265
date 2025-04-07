extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("demon 1").play("Idle")
	get_node("demon 2").play("Idle")
	get_node("demon 3").play("Idle")
	get_node("demon 4").play("Idle")
