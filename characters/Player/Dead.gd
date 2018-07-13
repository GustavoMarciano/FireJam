extends Node
var obj = preload("res://models/Explosion/Explosion.tscn")


func start():
	$"../../CollisionShape2D".set_disabled(true) 

func update(delta):
	var n_scale = rand_range(0.1,1)
	var new_obj = utils.create_object(obj,owner.position,owner)
	new_obj.apply_scale(Vector2(n_scale,n_scale))

	owner.dir = Vector2(0,1)
	owner.motion = owner.dir.normalized() * 600

func _on_VisibilityNotifier2D_screen_exited():
	set_physics_process(false)
	Game.game_end = true
	pass