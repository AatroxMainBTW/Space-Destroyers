extends Area2D


const SPEED = 200
var destroyed = false

var laser_montion = Vector2()
func _physics_process(delta):
	laser_montion.x += -SPEED * delta
	translate(laser_montion)
	$AnimatedSprite.play("Fire_enemy")
	pass


	
	


		
		
		

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass 







func _on_Laser_enemy_area_entered(area):
	queue_free()
	get_tree().get_root().get_node("Level1/Hud/text_health").health -=1
	if get_tree().get_root().get_node("Level1/Hud/text_health").health <=0:
		get_tree().get_root().get_node("Level1/Hud/text_health").health =0
	pass 
