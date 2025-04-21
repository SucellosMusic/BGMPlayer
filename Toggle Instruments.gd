extends Label




func _on_harp_toggled(button_pressed):
	if button_pressed:
		AudioServer.set_bus_mute(8, true)
	else:
		AudioServer.set_bus_mute(8, false)

func _on_violin_toggled(button_pressed):
	if button_pressed:
		AudioServer.set_bus_mute(7, true)
	else:
		AudioServer.set_bus_mute(7, false)

func _on_viola_toggled(button_pressed):
	if button_pressed:
		AudioServer.set_bus_mute(6, true)
	else:
		AudioServer.set_bus_mute(6, false)

func _on_cello_toggled(button_pressed):
	if button_pressed:
		AudioServer.set_bus_mute(5, true)
	else:
		AudioServer.set_bus_mute(5, false)

func _on_piano_toggled(button_pressed):
	if button_pressed:
		AudioServer.set_bus_mute(4, true)
	else:
		AudioServer.set_bus_mute(4, false)

func _on_bass_toggled(button_pressed):
	if button_pressed:
		AudioServer.set_bus_mute(3, true)
	else:
		AudioServer.set_bus_mute(3, false)

func _on_aux_percussion_toggled(button_pressed):
	if button_pressed:
		AudioServer.set_bus_mute(2, true)
	else:
		AudioServer.set_bus_mute(2, false)

func _on_main_percussion_toggled(button_pressed):
	if button_pressed:
		AudioServer.set_bus_mute(1, true)
	else:
		AudioServer.set_bus_mute(1, false)
