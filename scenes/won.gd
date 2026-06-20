extends Control


@export var next_level = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	EventManager.beatLevel.connect(level_retrieve)
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func level_retrieve(addy: String):
	show()
	EventManager.pauseGame.emit()
	next_level = addy
	pass

func _on_playagain_pressed() -> void:
	EventManager.continueGame.emit()
	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_level_selctor_pressed() -> void:
	EventManager.continueGame.emit()
	get_tree().change_scene_to_file("res://scenes/level_selection.tscn")
	pass # Replace with function body.
