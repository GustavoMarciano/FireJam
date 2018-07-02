extends "res://characters/Default.gd"

var current_state = ""
var obj = load("res://models/PlayerBullet/PlayerBullet.tscn")

func _ready():
	_change_state("Idle")

func _physics_process(delta):
	control()
	current_state.update(delta)
	pass

func control():  
	var move = Vector2(int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")),int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up")))
	dir = move
	var shoot = Input.is_action_pressed("ui_shoot")
	if shoot:
		$"Bullet_Spawner".shoot()
	pass


func _change_state(state):
	var path = "State/" + state
	if get_node(path):
		current_state = get_node(path)
		current_state.start()
	else:
		print("invalid state")
	pass

func _on_Area2D_area_entered(area):
	if  current_state != $"State/Dead":
		_change_state("Dead")
		get_tree().paused = true
	pass 