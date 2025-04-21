extends Control

func _ready():
	pass
	


func _on_start_pressed():
	get_node("A Timer 1").start(26.67)
	get_tree().call_group("Section A", "play")
	print("playing A1")

#Loop starts here

func _on_a_timer_1_timeout():
	get_node("A Timer 2").start(26.67)
	get_tree().call_group("Section A", "play")
	print("playing A2")
	
func _on_a_timer_2_timeout():
	get_node("B Timer").start(27.51)
	get_tree().call_group("Section B", "play")
	print("playing B")
	
func _on_b_timer_timeout():
	get_node("C Timer 1").start(26.67)
	get_tree().call_group("Section C", "play")
	print("playing C1")
	
func _on_c_timer_1_timeout():
	get_node("C Timer 2").start(26.67)
	get_tree().call_group("Section C", "play")
	print("playing C2")
	
func _on_c_timer_2_timeout():
	get_node("A Timer 1").start(26.67)
	get_tree().call_group("Section A", "play")
	print("playing A1")
	
func _on_stop_pressed():
	get_tree().call_group("Section All", "stop")
	print("Playing Stopped")
	


func _on_v_slider_value_changed(value):
	AudioServer.set_bus_volume_db(0, value)
	
	if value == -59:
		AudioServer.set_bus_mute(0, true)
	else:
		AudioServer.set_bus_mute(0, false)
	
	
