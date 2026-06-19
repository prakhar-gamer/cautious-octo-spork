extends Node

signal unpause_request
signal dead(level: String)

signal openSettings()
signal updateScrollImpulse(scroll_impulse: float)
signal close

signal pauseGame
signal continueGame
signal beatLevel(level_info: String)


var level2 = false
var level3 = false
var level4 = false
var level5 = false
