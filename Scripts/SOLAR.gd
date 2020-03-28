extends KinematicBody2D
const LASER = preload("res://Scene/Boss_laser.tscn")
var is_shooting = false
var velocity = Vector2()
var Armor = 4




func _ready():
	velocity.y += rand_range(0,607)
	yield(get_tree().create_timer(0.5),"timeout")
	shoot()
	pass 

func _process(delta):
	if get_position().y <= 0+16:
		velocity.y = abs(velocity.y)
	if get_position().y >= 600:
		velocity.y = -abs(velocity.y)
	move_and_slide(velocity)
	pass

func shoot():
	while true:
		$AnimatedSprite.play("default")
		var laser = LASER.instance()
		get_parent().add_child(laser)
		laser.position = $Position2D.global_position
		yield(get_tree().create_timer(0.5),"timeout")
	pass







func _on_Armor_area_entered(area):
	print("armor")
	print(Armor)
	Armor -=1
	if Armor == 2:
		velocity.x = -100
	if Armor<= 0:
		Armor = 0
		$AnimatedSprite.play("Dead")
		$AudioStreamPlayer2D.play()
		yield(get_tree().create_timer(0.5),"timeout")
		queue_free()
	pass
