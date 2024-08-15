extends Area2D

var speed:= 700
var screen_size=Vector2(1156,648)
var posx=randi_range(screen_size.x,screen_size.x+10)
var posy=randi_range(200,580)
func _ready():
	randomize()
	position.x =posx
	position.y = posy

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$AnimatedSprite2D.play("girar")
	position.x -= speed * delta
	if position.x < -350:
		queue_free()
