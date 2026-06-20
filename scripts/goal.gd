extends Node2D

@export var nextLocation = ""
@export var level = ""
@export var levelBeaten: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if levelBeaten == 1:
			EventManager.level2 = true
		elif levelBeaten==2:
			EventManager.level3 = true
		elif levelBeaten ==3:
			EventManager.gameBeaten = true
			
		EventManager.beatLevel.emit(nextLocation)
		pass
	pass # Replace with function body.
