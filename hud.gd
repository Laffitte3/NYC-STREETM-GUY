extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	$Start.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func ponPuntuacion(valor):
	$Score.text=("Score: "+str(valor))

func cambiaVidas(valor):
	$vidas.text=("vidas: "+str(valor))
