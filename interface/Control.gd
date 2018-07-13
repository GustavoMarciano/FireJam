extends Control

func _ready():
	Game.score = 0
	$"Panel2".visible = false
	$"Panel3".visible = false

func _process(delta):
	$"Panel/Label2".text = str(Game.score)
	$"Panel2/Label4".text = str(Game.score)

	if Input.is_action_just_pressed("ui_cancel"):
		if !Game.game_end:
			if Game.game_is_pause:
				Game.game_is_pause = false
				get_tree().paused = false
				$"Panel3".visible = false
			else:
				Game.game_is_pause = true
				get_tree().paused = true
				$"Panel3".visible = true

	if Game.game_end:
		$"Panel2".visible = true

func _on_Button_pressed():
	get_tree().reload_current_scene()
	get_tree().paused = false
	Game.game_end = false
	pass # replace with function body
