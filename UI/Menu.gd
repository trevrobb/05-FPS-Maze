extends Control

func _on_Restart_pressed():				# if we restart, then unpause the game and the reload the scene
	get_tree().paused = false
	get_tree().change_scene("res://Maze/Maze.tscn")

func _on_Quit_pressed():
	get_tree().quit()
