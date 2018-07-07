extends "res://characters/Default.gd"

var current_state = ""

func _ready():
	_change_state("Idle")

func _physics_process(delta):
	control()
	current_state.update(delta)

func control():  
	var move = Vector2(int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")),int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up")))
	dir = move
	var shoot = Input.is_action_pressed("ui_shoot")
	if shoot:
		$"Bullet_Spawner".shoot()

func _change_state(state):
	var path = "State/" + state
	if get_node(path):
		current_state = get_node(path)
		current_state.start()
	else:
		print("invalid state")

func _on_Area2D_area_entered(area):
	if area.owner.is_in_group("Enemy"): 
		_change_state("Dead")
	pass