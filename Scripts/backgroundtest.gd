extends ParallaxBackground


var offset_off = 0

func _ready():
	set_process(true)
	pass 



func _process(delta):
	offset_off -= 200 *delta
	set_scroll_offset(Vector2(offset_off,0)) 
	if offset.x > 1024:
		set_scroll_offset(Vector2(offset_off,0)) 
	pass
