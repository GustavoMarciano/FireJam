extends Node

func start():
	owner.get_node("AnimationPlayer").play("stagger")

func exit():
	owner._change_state("Idle")
	
func update(delta):
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	exit()
	pass 