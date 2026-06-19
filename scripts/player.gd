extends CharacterBody2D


@export var SPEED = 300.0
@export var Max_Speed = 400
@export var Max_fall_speed = 20
const JUMP_VELOCITY = -400.0

var health = 100
var dead = false


func _ready() -> void:
	add_to_group("player")
	up_direction = Vector2.UP
	platform_floor_layers = 0
	
func _process(delta: float) -> void:
	if health <= 0 && dead == false:
		EventManager.dead.emit("res://scenes/main.tscn")
		print("dead")
		dead = true
		

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	
	#prevents the person from getting to fast
	velocity.y = clampf(velocity.y, -1000, Max_fall_speed)
	velocity.x = clampf(velocity.x, -1000, Max_Speed)
	move_and_slide()
