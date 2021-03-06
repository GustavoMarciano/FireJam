extends KinematicBody2D
var dmg = 0
var obj = preload("res://models/Explosion/Explosion.tscn")

func _physics_process(delta):
	move_and_slide(Vector2(500,0))

func _on_Area2D_area_entered(area):
	if area.owner.is_in_group("Enemy"): 

		if area.owner.has_node("Hp"):
			area.owner.get_node("Hp").dmg(dmg)
			area.owner._change_state("Stagger")

		utils.create_object(obj,global_position,self)

		queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Timer_timeout():
	queue_free()
	pass