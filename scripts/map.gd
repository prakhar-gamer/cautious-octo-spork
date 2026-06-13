extends CharacterBody2D

@onready var sprite = $Sprite2D
var x_direction = true

var speed = 5000
var movement = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	movement = Vector2.ZERO
	
	if x_direction:
		if Input.is_action_just_pressed("scroll_up"):
			movement.x = 1
		elif Input.is_action_just_pressed("scroll_down"):
			movement.x = -1
	else:
		if Input.is_action_just_pressed("scroll_up"):
			movement.y = 1
		elif Input.is_action_just_pressed("scroll_down"):
			movement.y = -1
		
	velocity = speed * movement
	move_and_slide()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("left_click"):
		x_direction = not x_direction



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
