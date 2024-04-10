extends Node2D
class_name Level

var player_in_door: Door = null
var player_in_switch: Switch = null
var current_level = 0
#var levels = [preload("res://scenes/levels/level_1.tscn")] #, preload("res://scenes/levels/level_2.tscn")]

func _ready():
	print("plugging in signals")
	SignalBus.connect("player_entered_door", _on_player_entered_door)
	SignalBus.connect("player_exited_door", _on_player_exited_door)
	SignalBus.connect("player_entered_switch", _on_player_entered_switch)
	SignalBus.connect("player_exited_switch", _on_player_exited_switch)
	
	
	

func _on_player_perform_action():
	if player_in_door and player_in_door.open:
		if player_in_door.destination:
			$Player.position = player_in_door.destination.position
			player_in_door.open = false
			player_in_door.destination.open = true
			
	elif player_in_switch:
		player_in_switch.toggle_switch()
	
func _on_player_entered_door(door: Door):
	player_in_door = door
	
func _on_player_exited_door(door: Door):
	if player_in_door == door:
		player_in_door = null
		
func _on_player_entered_switch(sw: Switch):
	player_in_switch = sw
	
func _on_player_exited_switch(sw: Switch):
	if player_in_switch == sw:
		player_in_switch = null
