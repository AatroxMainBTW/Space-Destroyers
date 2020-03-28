extends CheckBox



func _on_NOT_fullscreen_toggled(button_pressed):
	OS.window_fullscreen = false
	
	
	pass 
func _ready():
	_on_NOT_fullscreen_toggled(true)
