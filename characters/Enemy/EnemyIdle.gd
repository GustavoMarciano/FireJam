extends Node

func start():
	pass

func update(delta):
	if owner.dir != Vector2(0,0):
		exit()
	pass

func exit():
	owner._change_state("Move")
	pass