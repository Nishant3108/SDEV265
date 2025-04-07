extends CharacterBody2D


const SPEEDLR = 60.0
const SPEEDUD = 60.0


func _physics_process(delta: float) -> void:


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionLR := Input.get_axis("ui_left", "ui_right")
	var directionUD := Input.get_axis("ui_up", "ui_down")
	
	if directionLR:
		velocity.x = directionLR * SPEEDLR
		$AnimatedSprite2D.play("run")
		velocity.y = move_toward(velocity.y, 0, SPEEDUD)
	elif directionUD && !directionLR:
		velocity.y = directionUD * SPEEDUD
		$AnimatedSprite2D.play("run")
		velocity.x = move_toward(velocity.x, 0, SPEEDLR)
	else:
		velocity.y = move_toward(velocity.y, 0, SPEEDUD)
		velocity.x = move_toward(velocity.x, 0, SPEEDLR)
		$AnimatedSprite2D.play("idle")
	
	if directionLR == -1:
		get_node("AnimatedSprite2D").flip_h = true
	elif directionLR == 1 :
		get_node("AnimatedSprite2D").flip_h = false	
		

	move_and_slide()
