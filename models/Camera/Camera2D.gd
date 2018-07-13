extends Camera2D

var shake_amount = 12

func shake():
	self.set_offset(Vector2( \
	rand_range(-1.0, 1.0) * shake_amount, \
	rand_range(-1.0, 1.0) * shake_amount \
	))