extends CharacterBody2D


@export var SPEED = 300.0
@export var Max_Speed = 400
@export var Max_fall_speed = 20
const JUMP_VELOCITY = -400.0

var health = 100

func _ready() -> void:
	add_to_group("player")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_just_pressed("ui_right"):
		velocity.x += SPEED * delta
	
	#prevents the person from getting to fast
	velocity.y = clampf(velocity.y, -1000, Max_fall_speed)
	velocity.x = clampf(velocity.x, -1000, Max_Speed)
	move_and_slide()
