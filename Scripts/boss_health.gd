extends TextureRect

var health = 4 setget _set_health

func _ready():
	pass 

func _set_health(value):
	health = value
	get_node("Label").set_text(str(health))
	
	pass
