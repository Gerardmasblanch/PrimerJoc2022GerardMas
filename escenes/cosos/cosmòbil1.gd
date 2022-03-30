extends KinematicBody2D

var velocitat = Vector2(200,0)

func _process(delta):
	position += velocitat * delta 
	if position.x == -560:
		velocitat.x = Vector2(-200,0)
	elif position.x == 835:
		velocitat.x = Vector2(200,0)
