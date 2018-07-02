extends Node

func start():
	$"../../CollisionShape2D".set_disabled(true) 
	pass

func update(delta):
	owner.dir = Vector2(0,1)
	owner.motion = owner.dir.normalized() * 300
	pass

func _on_VisibilityNotifier2D_screen_exited():
	get_tree().paused = true
	pass