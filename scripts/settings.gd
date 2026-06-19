extends Control

var open = false
@onready var ScrollImpulseSlider = $MarginContainer/VBoxContainer/HSlider

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventManager.openSettings.connect(openSettings)
	EventManager.close.connect(closeSettings)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func openSettings() -> void:
	open = true
	show()

func closeSettings() -> void:
	open = false
	hide()

func _on_h_slider_drag_ended(value_changed: bool) -> void:
	var newImpulse = ScrollImpulseSlider.value
	EventManager.updateScrollImpulse.emit(newImpulse)
	pass # Replace with function body.
