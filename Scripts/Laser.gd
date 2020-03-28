extends Area2D

const SPEED = 50
var destroyed = false
var score = 0
var n = 100
var laser_montion = Vector2()

func _ready():
	scene2()
	$AudioStreamPlayer2D.play()

func _physics_process(delta):
	laser_montion.x += SPEED * delta
	translate(laser_montion)
	$AnimatedSprite.play("Fire")
	
	
	pass


	
	


		
		
		

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass 



func _on_Laser_area_entered(area):
	get_parent().find_node("text_score").score += 20
	queue_free()
	
	pass
func scene2():
	
	if get_parent().find_node("text_score").score >= 500: 
		get_tree().change_scene("res://Scene/SOLAR MAN.tscn")
