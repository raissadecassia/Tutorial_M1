extends KinematicBody2D

var movespeed = 200
onready var animationArara = $animatedSprite

func _physics_process(_delta):

	var velocity = Vector2()
	
	# interpreta os inputs de movimentação, aplica as velocidades e seleciona a animação certa para cada direção
	if Input.is_action_pressed("ui_left"):
			velocity.x= -1
			animationArara.play("Left")
	if Input.is_action_pressed("ui_right"):
		velocity.x= 1
		animationArara.play("Right")
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1
		animationArara.play("Down")
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
		animationArara.play("Up")
	velocity = move_and_slide(velocity*movespeed)
	
func _ready():
	#coloca a animação inicial da arara
	animationArara.play("Stop")
