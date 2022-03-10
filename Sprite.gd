extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat_angular= 90
export var velocitat= Vector2(200,300)
# Called when the node enters the scene tree for the first time.
func _ready():
	position  = Vector2(500,300)
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation_degrees+= velocitat_angular * delta
	position+= velocitat*delta
	
	if position.x>=1024 or position.x <= 0:
		velocitat.x *= -1
	if position.y>=600 or position.y <= 0:
		velocitat.y *= -1
		
	
	
