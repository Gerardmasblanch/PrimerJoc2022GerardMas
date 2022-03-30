extends KinematicBody2D


var velocitat_base = 200
var velocitat = Vector2.ZERO
var direccio  = Vector2.DOWN
var gravetat  = Vector2.DOWN*980
var velocitat_salt = -625
var positio_inicial = position

func _physics_process(delta):
	velocitat.x = 0
	velocitat += gravetat * delta
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
	if Input.is_action_just_pressed("mou a dalt") and is_on_floor():
		velocitat.y = velocitat_salt


	velocitat = move_and_slide(velocitat, Vector2.UP)
	anima(velocitat)
	
	
func anima(velocitat):
	if velocitat.x > 0:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = false
	elif velocitat.x < 0:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = true
		
	if abs(velocitat.x) < 0.1:
		$AnimatedSprite.play("quiet")
		
	if velocitat.y < 0 :
		$AnimatedSprite.play("salta")


func _on_portal_1_body_entered(body):
	get_tree().change_scene("res://escenes/cosos/Escena2.tscn")


func _on_Augmentador_de_velocitat_body_entered(body):
	velocitat_salt = -850

func _process(delta):
	if position.y == 601:
		position = position


func _on_aguentador_V_2_body_entered(body):
	velocitat_salt = -850
