extends Node

export (int) var hp
export (int) var total_hp

const MAX_HP = 999
const MIN_HP = 0

func dmg(value):
	if hp + value > MIN_HP:
	 	hp -= value

func heal(value):
	if hp + value < MAX_HP:
		hp += value
	pass