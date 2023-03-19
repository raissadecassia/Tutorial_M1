extends Area2D


# funções para fazer o stroke aparecer e desaparecer
func _on_Save_body_entered(body):
	if body.name == "Arara":
		$TracejadoBranco.visible = true


func _on_Save_body_exited(body):
	if body.name == "Arara":
		$TracejadoBranco.visible = false
