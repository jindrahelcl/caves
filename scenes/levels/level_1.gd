extends Level

func _on_switch_toggle():
	$DoorLayout/Door3.open = not $DoorLayout/Door3.open
	$DoorLayout/Door4.open = not $DoorLayout/Door4.open
