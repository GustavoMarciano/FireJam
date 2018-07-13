extends Position2D

export (float) var WaitTime
export (PackedScene) var Object_Path
export (int) var dmg
onready var obj = load(Object_Path.get_path())
var can_shoot = true

func shoot():
	if can_shoot && owner.current_state != owner.get_node("State/Dead"):
		can_shoot = false
		var new_obj = utils.create_object(obj,owner.global_position,owner)
		new_obj.dmg = dmg
		$"Timer".set_wait_time(WaitTime)
		$"Timer".start()

func _on_Timer_timeout():
	can_shoot = true
	pass 