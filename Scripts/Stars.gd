extends Node2D

var width = 0

func _ready():
	width = $Star1.texture.get_width()
	pass 



func _process(delta):
	$Star1.translate(Vector2(-500 * delta, 0))
	$Star2.translate(Vector2(-500 * delta, 0))
	$Star3.translate(Vector2(-500 * delta, 0))
	if $Star1.position <= -width:
		$Star1.position.x = width
	if $Star2.position <= -width:
		$Star2.position.x = width
	if $Star3.position <= -width:
		$Star3.position.x = width
	pass
