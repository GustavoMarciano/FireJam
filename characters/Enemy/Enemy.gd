extends "res://characters/Default.gd"

var current_state = ""

func _ready():
	_change_state("Idle")
	apply_scale(Vector2(rand_range(0.5,2),rand_range(0.5,2)))

func _physics_process(delta):
	dir = Vector2(-1,0)
	current_state.update(delta)

	if $"Hp".hp == 0 && current_state != get_node("State/Dead"):
		_change_state("Dead")

func _change_state(state):
	var path = "State/" + state
	if get_node(path):
		current_state = get_node(path)
		current_state.start()
	else:
		print("invalid state")
	pass