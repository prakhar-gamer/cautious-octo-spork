extends Control

@onready var heart1 = $HBoxContainer/heart1
@onready var heart2 = $HBoxContainer/heart2
@onready var heart3 = $HBoxContainer/heart3
@onready var heart4 = $HBoxContainer/heart4
@onready var heart5 = $HBoxContainer/heart5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var player = get_tree().get_first_node_in_group("player")
	if player:
		var current_health = player.health
		if current_health < 90:
			heart5.hide()
		if current_health < 70:
			heart4.hide()
		if current_health < 50:
			heart3.hide()
		if current_health < 30:
			heart2.hide()
		if current_health < 10:
			heart1.hide()
	pass
