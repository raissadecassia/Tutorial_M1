extends Node2D



func _on_Save_body_entered(body):
#deixa o recado de parabenização visível
	if body.name == "Arara":
		$HelpScreen.visible = true
		$HelpScreen/Quit.grab_focus()
		
func _ready():
	# desabilita a visibilidade da tela de parabenização quando o jogo inicia
	$HelpScreen.visible = false



func _on_Quit_pressed():
	#retorna para a tela inicial quando o jogo acaba
	get_tree().change_scene("res://Scene/inicial.tscn")
