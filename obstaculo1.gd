extends Area2D

var speed:= 400
var screen_size=Vector2(1156,648)
var posx=randi_range(screen_size.x,screen_size.x+800)
var posy=580
func _ready():
	randomize()
	position.x =posx
	position.y = posy

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed * delta
	if position.x <-350:
		queue_free()
