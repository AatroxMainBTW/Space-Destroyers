extends Area2D
const SPEED = 50
var laser_montion = Vector2()
var dmg = 20

func _physics_process(delta):
	laser_montion.x += SPEED * delta
	translate(laser_montion)
	$AnimatedSprite.play("Fire")
	
	
	pass
func _ready():
	$AudioStreamPlayer2D.play()
	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass 











func _on_Laser_vs_Boss_area_entered(area):
	get_parent().find_node("Text_health").health -=1
	if get_parent().find_node("Text_health").health <=0:
		get_parent().find_node("Text_health").health =0
	pass
