extends KinematicBody2D
var dmg = 0
var obj = preload("res://models/Explosion/Explosion.tscn")

func _physics_process(delta):
	move_and_slide(Vector2(-1000,0))

func _on_Area2D_area_entered(area):
	if area.owner.is_in_group("Player"): 
		utils.create_object(obj,global_position,self)
		queue_free()
	pass 

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # replace with function body
