extends Level


func _on_pressure_plate_toggle():
	$PressurePlate2.set_pressed(false)
	#$DoorLayout/Door7.open = not $DoorLayout/Door7.open


func _on_switch_toggle():
	$DoorLayout/Door4.open = $Switch.state
	$DoorLayout/Door6.open = not $Switch.state
	#$PressurePlate.set_pressed(not $PressurePlate.pressed)
	#$PressurePlate2.set_pressed(not $PressurePlate2.pressed)


func _on_pressure_plate_2_toggle():
	$PressurePlate.set_pressed(false)
	$DoorLayout/Door7.open = not $DoorLayout/Door7.open
