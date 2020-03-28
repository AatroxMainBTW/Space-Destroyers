extends TextureRect


var health = 4 setget _set_hp
func _set_hp(value):
	health = value
	get_node("label").set_text(str(health))
