extends Area2D
class_name Switch

signal toggle

@export var state = true

func _process(_delta):
	$SwitchLeft.visible = state
	$SwitchRight.visible = not state
	
func toggle_switch():
	toggle.emit()
	state = not state

func _on_body_entered(body):
	SignalBus.player_entered_switch.emit(self)
	
func _on_body_exited(body):
	SignalBus.player_exited_switch.emit(self)
