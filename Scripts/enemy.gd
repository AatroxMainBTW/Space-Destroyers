extends Area2D
var destroyed = false
export var Velocity = Vector2()


var sprite = true
func _ready():
	set_process(true)
	
	pass 


func _process(delta):
	Velocity.x = -500
	translate(Velocity * delta)
	sprite = false
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass 

	
func _on_enemy_area_entered(area):
	

	$Sprite.play("Dead")
	$AudioStreamPlayer2D.play()
	sprite = true
	yield(get_tree().create_timer(0.3), "timeout")

	queue_free()
	
	pass



func _on_enemy_body_entered(body):
	$Sprite.play("Dead")
	
	$AudioStreamPlayer2D.play()
	body.queue_free()
	
	
	pass 




func _on_enemy_hide(enemy):
	sprite = true
	if sprite == true:
		enemy.hide()
	pass 
