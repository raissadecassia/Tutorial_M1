extends Control


func _ready():
	$Button.grab_focus()

func _on_Button_pressed():
	queue_free()
