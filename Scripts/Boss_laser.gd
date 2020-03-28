extends Area2D

const SPEED = 10
var laser_montion = Vector2()
func _physics_process(delta):
	laser_montion.x += -SPEED * delta
	translate(laser_montion)
	$AnimatedSprite.play("Fire")
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass 



func _on_Boss_laser_body_shape_entered(body_id, body, body_shape, area_shape):
	body.queue_free()
	pass 
