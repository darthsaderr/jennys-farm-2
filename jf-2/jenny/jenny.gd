extends CharacterBody2D


const move_speed = 100.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	move_jenny()
	move_and_slide()

func move_jenny():
	var direction:Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	velocity = direction * move_speed 
	
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("walk")
		#$InteractionZone.position= Vector2(7,0)
	elif velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("walk")
		#$InteractionZone.position= Vector2(-9,0)
	elif velocity.y < 0:
		$AnimatedSprite2D.play("walk")
		#$InteractionZone.position= Vector2(0,-9)
	elif velocity.y > 0:
		$AnimatedSprite2D.play("walk")
		#$InteractionZone.position= Vector2(0,9)
	else:
		$AnimatedSprite2D.stop()
