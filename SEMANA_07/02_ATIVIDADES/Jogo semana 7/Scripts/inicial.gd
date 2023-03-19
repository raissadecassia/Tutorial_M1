extends Control


func _on_ButtonQuit_pressed():
#jogo é fechado quando o botão for apertado
	get_tree().quit()


func _on_ButtonTutorial_pressed():
#abre a tela de tutorial quando o botão é apertado
	var tutorialScreen = load("res://Scene/Tutorial.tscn").instance()
	get_tree().current_scene.add_child(tutorialScreen)


func _on_ButtonPlay_pressed():
#abre a tela do jogo quando o botão é apertado
	get_tree().change_scene("res://Scene/Principal.tscn")
