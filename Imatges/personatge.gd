extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat_angular = 90
export var velocitat = Vector2(200,200)
var direccio = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	direccio = Vector2.ZERO
	
	if Input.is_action_pressed("mou dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("mou esquerra"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("mou a dalt"):
		direccio += Vector2.UP
	if Input.is_action_pressed("mou a baix"):
		direccio += Vector2.DOWN
	position += direccio.normalized() * velocitat * delta



func _on_personatje_area_entered(area:Area2D):
	area.modulate = Color(0,1,0)
	if area.is_in_group("Inici"):
		modulate = Color(0,1,0)
	if area.is_in_group("Final"):
		modulate = Color(1,0,0)
		area.modulate = Color(1,0,0)

func _on_personatje_area_exited(area:Area2D):
	modulate = Color(1,1,1)
	area.modulate = Color(1,1,1)
