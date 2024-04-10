extends Area2D

signal toggle

@export var pressed = true 

func _ready():
	set_pressed(pressed)
	
func toggle_switch():	
	set_pressed(not pressed)
	toggle.emit()

func set_pressed(is_pressed):
	pressed = is_pressed
	$PlatePressed.visible = pressed
	$PlateNotPressed.visible = not pressed

func _on_body_entered(body):
	if not pressed:
		toggle_switch()
	
