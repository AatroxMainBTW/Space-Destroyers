extends TextureRect



var score = 0 setget _set_score

func _ready():
	pass 

func _set_score(value):
	score = value
	get_node("label").set_text(str(score))
	pass

