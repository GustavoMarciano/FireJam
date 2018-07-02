extends KinematicBody2D

var motion = Vector2()
var dir = Vector2()

func _physics_process(delta):
	motion = move_and_slide(motion)