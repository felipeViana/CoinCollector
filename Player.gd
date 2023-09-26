extends CharacterBody2D

var SPEED : int = 200

func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0

	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
		
	velocity *= SPEED
		
	move_and_slide()
	
