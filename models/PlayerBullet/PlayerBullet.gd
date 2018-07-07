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

		var new_obj = obj.instance()
		get_parent().add_child(new_obj)
		new_obj.position = position

		queue_free()
	pass 