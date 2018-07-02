extends Node2D

func _ready():
	$"Sprite/AnimationPlayer".play("explode")
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
	pass # replace with function body
