extends Node

func start():
	$"../../CollisionShape2D".set_disabled(true) 
	get_tree().paused = true

func update(delta):
	owner.dir = Vector2(0,1)
	owner.motion = owner.dir.normalized() * 300

func _on_VisibilityNotifier2D_screen_exited():
	pass