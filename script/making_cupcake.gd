extends Node

var 컵케이크씬 = preload("res://scene/cupcake.tscn")

func _on_timer_timeout() -> void:
	var 인스턴스 = 컵케이크씬.instantiate()
	인스턴스.position = Vector2(380 + randi() % 270, 0)
	add_child(인스턴스)
