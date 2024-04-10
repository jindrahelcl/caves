extends Area2D
class_name Door

@export var open: bool = true
@export var destination: Door
@export var final_door: bool = false

func _process(_delta):
	var open_sprites = $Sprites/OpenSprites as Node2D
	var closed_sprites = $Sprites/ClosedSprites as Node2D
	
	open_sprites.visible = open
	closed_sprites.visible = not open

func _on_body_entered(_body):
	SignalBus.player_entered_door.emit(self)

func _on_body_exited(_body):
	SignalBus.player_exited_door.emit(self)
