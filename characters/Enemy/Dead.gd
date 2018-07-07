extends Node

func start():
	exit()

func exit():
	owner.queue_free()

func update(delta):
	pass
