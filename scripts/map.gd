extends Node2D

@onready var sprite = $Sprite2D
var x_direction = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("left_click"):
		x_direction = not x_direction
	if x_direction == true:
		if Input.is_action_just_pressed("scroll_up"):
			sprite.position.x += 10
		if Input.is_action_just_pressed("scroll_down"):
			sprite.position.x -= 10
	else:
		if Input.is_action_just_pressed("scroll_up"):
			sprite.position.y += 10
		if Input.is_action_just_pressed("scroll_down"):
			sprite.position.y -= 10
	print(x_direction)



#func _input(event): 
	#var movement = $Sprite2D.position
	#if event is InputEventMouseButton:
		#if x_direction == true:
			#if event.button_index == MOUSE_BUTTON_WHEEL_UP and event.pressed:
				#movement.x += 10
			#if event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
				#movement.x -= 10
			#print(x_direction)
		#if x_direction == false:
			#if event.button_index == MOUSE_BUTTON_WHEEL_UP and event.pressed:
				#movement.y += 10
			#if event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
				#movement.y -= 10
			#print(x_direction)
