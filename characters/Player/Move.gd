extends Node

const MAXSPEED = 100
export(int) var speed 

func start():
	pass

func update(delta):
	owner.motion = owner.dir.normalized() * speed
	if owner.dir == Vector2(0,0):
		exit()

func exit():
	owner._change_state("Idle")
	pass