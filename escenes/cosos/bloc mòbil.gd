extends KinematicBody2D

var velocitat = Vector2(3,0)

func _process(delta):
	position += velocitat
	if position.x == 555:
		velocitat = Vector2.RIGHT 
	elif position.x == 895:
		velocitat = Vector2.LEFT
