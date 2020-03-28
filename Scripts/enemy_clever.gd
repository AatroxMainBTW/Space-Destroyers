extends "res://Scripts/enemy.gd"

const LASER_ENM = preload("res://Scene/Laser_enemy.tscn")


func _ready():
	Velocity.x = -100
	Velocity.y = rand_range(0,607)
	yield(get_tree().create_timer(1),"timeout")
	shoot()
	pass 
func _process(delta):
		if get_position().y <= 0+16:
			Velocity.y = abs(Velocity.y)
		if get_position().y >= 600:
			Velocity.y = -abs(Velocity.y)
		pass

func shoot():
	while true:
		var laser = LASER_ENM.instance()
		get_parent().add_child(laser)
		laser.position = $canon.global_position
		yield(get_tree().create_timer(1),"timeout")
	pass
