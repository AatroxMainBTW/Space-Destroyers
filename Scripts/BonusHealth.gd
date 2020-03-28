extends KinematicBody2D

var velocity = Vector2()
const SPEED = 85
func _ready():
	velocity.y = rand_range(0,607)
	yield(get_tree().create_timer(0.5),"timeout")
	$AnimatedSprite.play("default")
	pass 
func _process(delta):
	if get_position().y <= 0+16:
		velocity.y = abs(velocity.y)
	if get_position().y >= 600:
		velocity.y = -abs(velocity.y)
	move_and_slide(velocity)
	pass




func _on_Area2D_area_entered(area):
	get_tree().get_root().get_node("Level1/Hud/text_health").health +=1
	queue_free()
	pass 
