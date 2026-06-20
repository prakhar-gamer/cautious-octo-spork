extends Control

var death_location = ""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	
	EventManager.dead.connect(deathScreen)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func deathScreen(deathloco: String):
	show()
	EventManager.pauseGame.emit()
	death_location = deathloco
	


func _on_restart_pressed() -> void:
	EventManager.continueGame.emit()
	get_tree().reload_current_scene()
	pass # Replace with function body.




func _on_home_pressed() -> void:
	EventManager.continueGame.emit()
	get_tree().change_scene_to_file("res://scenes/level_selection.tscn")
	pass # Replace with function body.
