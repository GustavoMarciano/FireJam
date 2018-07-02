extends Position2D

export (float) var min_waitTime
export (float) var max_waitTime
export (PackedScene) var Object_Path
onready var obj = load(Object_Path.get_path())

func _ready():
	randomize()
	$"Timer".set_wait_time(rand_range(min_waitTime,max_waitTime))
	$"Timer".start()

func _on_Timer_timeout():
	var new_obj = obj.instance()
	get_parent().add_child(new_obj)
	new_obj.position = global_position
	$"Timer".set_wait_time(rand_range(min_waitTime,max_waitTime))
	$"Timer".start()
	pass 