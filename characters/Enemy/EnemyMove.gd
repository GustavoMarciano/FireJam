extends Node

const MAXSPEED = 100
export(int) var maxspeed
export(int) var minspeed 
var speed = 0

func start():
	speed = rand_range(maxspeed,minspeed)
	pass

func update(delta):
	owner.motion = owner.dir.normalized() * speed
	if owner.dir == Vector2(0,0):
		exit()
	pass

func exit():
	owner._change_state("Idle")
	pass