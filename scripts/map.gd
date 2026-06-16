extends CharacterBody2D

@onready var sprite = $Sprite2D
var x_direction = true

@export var scroll_impulse: float = 100
@export var friction: float = 0.0
@export var max_speed = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventManager.updateScrollImpulse.connect(updateImpulse)
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	if x_direction:
		velocity.y = 0
		if Input.is_action_just_pressed("scroll_up"):
			velocity.x -= scroll_impulse
		elif Input.is_action_just_pressed("scroll_down"):
			velocity.x += scroll_impulse
		
		#(from, to, weight)
		velocity.x = lerp(velocity.x, 0.0, friction * delta)
		
		if abs(velocity.x) < 5:
			velocity.x = 0
			
		velocity.x = clampf(velocity.x, -max_speed, max_speed)
	else:
		
		velocity.x = 0
		if Input.is_action_just_pressed("scroll_up"):
			velocity.y += scroll_impulse
		elif Input.is_action_just_pressed("scroll_down"):
			velocity.y -= scroll_impulse
			
		velocity.y = lerp(velocity.y, 0.0, friction * delta)
		
		if abs(velocity.y) < 5:
			velocity.y = 0
			
		velocity.y = clampf(velocity.y, -max_speed, max_speed)
		
	move_and_slide()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("left_click"):
		x_direction = not x_direction


func updateImpulse(new_impulse: float) -> void:
	scroll_impulse = new_impulse
	

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
