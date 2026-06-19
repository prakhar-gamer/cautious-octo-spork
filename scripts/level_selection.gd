extends Node2D

@onready var uiLevel2 = $"Control/VBoxContainer/1 - 5/Level 2"
@onready var uiLevel3 = $"Control/VBoxContainer/1 - 5/Level 3"
@onready var uiLevel4 = $"Control/VBoxContainer/1 - 5/Level 4"
@onready var uiLevel5 = $"Control/VBoxContainer/1 - 5/LeveL 5"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	uiLevel2.visible = EventManager.level2
	uiLevel3.visible = EventManager.level3
	uiLevel4.visible = EventManager.level4
	uiLevel5.visible = EventManager.level5
	$Sprite2D2.hide()
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if EventManager.level2==true && EventManager.level3==true && EventManager.level4==true && EventManager.level5==true:
		uiLevel2.visible = false
		uiLevel3.visible = false
		uiLevel4.visible = false
		uiLevel5.visible = false
		$Sprite2D2.show()
		pass
	pass


func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	pass # Replace with function body.


func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Level2/level2.tscn")
	pass # Replace with function body.


func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Level3/level3.tscn")
	pass # Replace with function body.


func _on_level_4_pressed() -> void:
	get_tree().change_scene_to_file("res://Level4/level4.tscn")
	pass # Replace with function body.


func _on_leve_l_5_pressed() -> void:
	get_tree().change_scene_to_file("res://Level5/level5.tscn")
	pass # Replace with function body.
