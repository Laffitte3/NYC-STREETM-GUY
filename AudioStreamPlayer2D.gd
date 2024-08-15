extends AudioStreamPlayer2D
#Hacer un for que itere una lista y resumimos esto
var musica =load("res://World Without Words    Nujabes (1).mp3")
var musica2=load("res://Latitude Tribute Mix (feat. Five Deez)   Nujabes.mp3")
var musica3=load("res://Don Omar – El Señor de la Noche .mp3")
var musica4=load("res://Sin Banderas – Que Lloro.mp3")
var musica5=load("res://Todavía_Me_Amas_Lo_Mejor_de_Aventura_Deluxe_Edition_CD_1_T.mp3")
var musica6=load("res://The Ketchup Song (Asereje) (Spanish Version)   Las Ketchup.mp3")
func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		$".".stream = musica
		$".".play()
	elif Input.is_action_just_pressed("ui_right"):
		$".".stream=musica2
		$".".play()
	elif Input.is_action_just_pressed("1"):
		$".".stream=musica3
		$".".play()
	elif Input.is_action_just_pressed("2"):
		$".".stream=musica4
		$".".play()
	elif Input.is_action_just_pressed("3"):
		$".".stream=musica5
		$".".play()
	elif Input.is_action_just_pressed("4"):
		$".".stream=musica6
		$".".play()
	
	
