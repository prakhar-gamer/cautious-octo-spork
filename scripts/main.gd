extends Node2D

@onready var pause_menu = $"Player/Camera2D/Pause Menu"
@onready var player = $Player
var paused = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventManager.unpause_request.connect(on_unpause_request)
	EventManager.pauseGame.connect(stopGame)
	EventManager.continueGame.connect(continueGame)
	player.health = 100
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("escape"):
		pauseMenu()
		

func on_unpause_request():
	pause_menu.hide()
	get_tree().paused = false
	paused = false
	print("work on main script")
	pass

func stopGame():
	get_tree().paused = true

func pauseMenu():
	if paused:
		pause_menu.hide()
		EventManager.close.emit()
		get_tree().paused = false
	else: 
		pause_menu.show()
		get_tree().paused = true
		
	paused = !paused

func continueGame():
	get_tree().paused = false
	
func beatLevel():
	
	pass
	
