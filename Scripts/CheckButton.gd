extends CheckButton




func _on_CheckButton_toggled(button_pressed):
	OS.window_fullscreen = true
	if toggle_mode == false:
		OS.window_fullscreen = false
	print(toggle_mode)
	pass 
