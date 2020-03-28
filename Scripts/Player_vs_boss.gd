extends KinematicBody2D


const SPEED = 85
const DASH = 400
const LASER = preload("res://Scene/Laser_vs_Boss.tscn")


var player_montion = Vector2()



func _ready():
	
	set_process(true)
	


func _physics_process(delta):
	$Trusters/AnimatedSprite.play("default")
	player_montion.x = SPEED
	if Input.is_action_pressed("ui_left"):
		player_montion.x = -DASH
		
	elif Input.is_action_pressed("ui_down"):
			player_montion.y = DASH
			
		
	elif Input.is_action_pressed("ui_up"):
				player_montion.y = -DASH
	else:
		if player_montion.x == SPEED && player_montion.y == -DASH:
					player_montion.x = SPEED
					player_montion.y = 0
		elif player_montion.x == SPEED && player_montion.y == DASH:
					player_montion.x = SPEED
					player_montion.y = 0
	if Input.is_action_just_pressed("ui_select"):
		var laser = LASER.instance()
		get_parent().add_child(laser)
		laser.position = $Canon.global_position
	move_and_slide(player_montion)






