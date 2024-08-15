extends Node

const playerPos := Vector2(150,485)

@onready var obstaculo1= preload("res://obstaculo1.tscn")
@onready var obstaculo2= preload("res://obstaculo2.tscn")
@onready var sierra= preload("res://sierra.tscn")
@onready var lista_obstaculos=[obstaculo1,obstaculo2]
@onready var HUD= preload("res://hud.tscn")

var screen_size:=Vector2(1152,648)
var posx=randi_range(screen_size.x,screen_size.x+600)
var posy= 560
var puntos= 0




func _ready():
	
	$crearObataculos.wait_time=randi_range(4,10)
	$crearSierra.wait_time=randi_range(4,6)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	puntos+=1
	mostrarPuntos(puntos)
	if $Player.vidas<=0:
		get_tree().paused=true
		$HUD.get_node("Start").show()
	

func _on_timer_timeout():
		for obstaculos in lista_obstaculos:
			var clon_obstaculos = obstaculos.instantiate()
			add_child(clon_obstaculos)


func _on_crear_sierra_timeout():
		var clon_sierra = sierra.instantiate()
		add_child(clon_sierra)
	
func mostrarPuntos(puntos):
	$HUD.ponPuntuacion(puntos)
