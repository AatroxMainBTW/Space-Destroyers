extends Node

const ENEMY_KAMIKAZE = [
	preload("res://Scene/enemy_kamikaze.tscn"),
	preload("res://Scene/enemy_clever.tscn")
]


func _ready():
	
	spawn()
	
	pass 

func spawn():
	while true:
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		var randomNumber = rng.randi_range(0, 1) 
		if randomNumber == 0 or randomNumber == 1:
			randomize()
			var enemy = ENEMY_KAMIKAZE[randomNumber].instance()
			var pos = Vector2()
			pos.x =1000
			pos.y = rand_range(0+16, get_viewport().get_visible_rect().size.y-16)
			enemy.set_position(pos)
			get_node("Container").add_child(enemy)
			yield(get_tree().create_timer(rand_range(1,1.25)), "timeout")
		 
		pass
