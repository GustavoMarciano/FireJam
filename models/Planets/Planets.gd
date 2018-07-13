extends Node2D

var speed = rand_range(0.1,0.2)

func _ready():
	var n_scale = rand_range(0.1,3)
	self.apply_scale(Vector2(n_scale,n_scale))
	var sprite = get_children()
	sprite[round(rand_range(0,2))].show()

func _process(delta):
	self.global_position.x -= speed
	pass