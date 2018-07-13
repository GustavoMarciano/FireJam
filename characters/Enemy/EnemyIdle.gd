extends Node

func start():
	owner.get_node("AnimationPlayer").play("Idle")

func update(delta):
	if owner.dir != Vector2(0,0):
		exit()

func exit():
	owner._change_state("Move")
	pass
