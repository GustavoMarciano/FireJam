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
	utils.create_object(obj,global_position,self)
	$"Timer".set_wait_time(rand_range(min_waitTime,max_waitTime))
	$"Timer".start()
	pass 