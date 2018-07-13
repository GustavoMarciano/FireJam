extends Node
 
func start():
	exit()

func exit():
	Game.score+=1
	owner.queue_free()

func update(delta):
	pass