extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_resume_pressed() -> void:
	EventManager.unpause_request.emit()
	print("work on pause menu")


func _on_settings_pressed() -> void:
	EventManager.openSettings.emit()
	print("sent")
	hide()
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	pass # Replace with function body.
