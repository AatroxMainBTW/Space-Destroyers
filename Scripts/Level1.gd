extends Node2D




func _on_enemyGenerator_create_enemy(enemy, location):
	var enemy_instance = enemy.instance()
	add_child(enemy_instance)
	enemy_instance.global_position = location
