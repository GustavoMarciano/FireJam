extends Node2D

onready var obj = load("res://models/Explosion/Explosion.tscn")

func _physics_process(delta):
	self.position.x += 30
	pass

func _on_Area2D_area_entered(area):
	var new_obj = obj.instance()
	get_parent().add_child(new_obj)
	new_obj.position = position
	queue_free()
	pass # replace with function body
