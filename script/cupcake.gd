extends Area2D


const 스크롤속도 = 200

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += 스크롤속도 * delta


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Car":
		Global.점수 += 10
		print(Global.점수)
		self.queue_free()
