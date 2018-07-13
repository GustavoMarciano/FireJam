extends Node2D

func _ready():
	$"Sprite/AnimationPlayer".play("explode")
	utils.remote_call("Camera2D","shake")

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
	pass # replace with function bo