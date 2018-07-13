extends Node

var main_node setget , _get_main_node

func create_timer(wait_time):
	var timer = Timer.new()
	timer.set_wait_time(wait_time)
	timer.set_one_shot(true)
	timer.connect("timeout", timer, "queue_free")
	add_child(timer)
	timer.start()
	return timer

func find_node(node):
	return self.main_node.find_node(node)

func attach(src_node, src_signal, trg_node, trg_func):
	if typeof(src_node) == TYPE_STRING:
		src_node = find_node(src_node)
	
	if typeof(trg_node) == TYPE_STRING:
		trg_node = find_node(trg_node)
	
	if src_node != null and trg_node != null:
		src_node.connect(src_signal, trg_node, trg_func)

func remote_call(src_node, method, arg0 = null, arg1 = null):
	src_node = find_node(src_node)
	
	if src_node and src_node.has_method(method):
		if arg0 and arg1:
			return src_node.call(method, arg0, arg1)
		if arg0:
			return src_node.call(method, arg0)
		return src_node.call(method)

func _get_main_node():
	var root = get_tree().get_root()
	return root.get_child( root.get_child_count()-1 )

func create_object(obj,nw_obj_position,owne):
	var new_obj = obj.instance()
	owne.get_parent().add_child(new_obj)
	new_obj.position = nw_obj_position
	return new_obj