extends CheckBox
var is_pressed = false


	



func _on_FullScreen_toggled(button_pressed):
	toggle_mode ==true
	OS.window_fullscreen = true
	print(toggle_mode)
	
	pass 


func _on_FullScreen_untoggled(button_pressed):
	toggle_mode ==false
	OS.window_fullscreen = false
	print(toggle_mode)
	pass
