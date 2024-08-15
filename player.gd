extends CharacterBody2D

const gravedad= 2000
var jump_speed= 1040
var saltos = 0
var max_saltos=2
var vidas=3


func _process(delta):
	velocity.y += gravedad * delta
	
	if is_on_floor():
		$AnimatedSprite2D.play("run")
		saltos=0
	if Input.is_action_just_pressed("ui_accept") and saltos<max_saltos:
		if saltos == 0:
			velocity.y -= jump_speed
			$AnimatedSprite2D.play("jump")
			saltos +=1
			
		elif saltos == 1:
			velocity.y -= jump_speed/2
			$AnimatedSprite2D.play("double jump")
			saltos+=1
	if !is_on_floor():
		if velocity.y > 1:
			$AnimatedSprite2D.play("fall")
			
	if Input.is_action_just_pressed("ui_accept") and get_tree().paused==true:
		vidas=3
		$"../HUD".get_node("Start").hide()
		get_tree().paused=false
		get_tree().reload_current_scene()
		
		
	move_and_slide()


func _on_area_2d_area_entered(area):
	if area.is_in_group("obstaculos"):
		vidas -= 1
		$AnimatedSprite2D.play("hit")
		$"../HUD".cambiaVidas(vidas)
		
func perder():
	get_tree().paused=true
