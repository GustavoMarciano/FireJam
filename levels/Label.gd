extends Label

var score = 0

func _process(delta):
	set_text("Score: "+ str(score))
	pass