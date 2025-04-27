extends Node2D

var 鼠标按下位置 : Vector2
var 鼠标实时位置 : Vector2


func _process(delta: float) -> void:
	#var 左右 = Input.get_axis("向左", "向右")
	#var 上下 = Input.get_axis("向上", "向下")
	#get_window().position.x += round(左右 * 100 * delta)
	#get_window().position.y += round(上下 * 100 * delta)
	
	if Input.is_action_just_pressed("左键"):
		鼠标按下位置 = get_global_mouse_position()
		
		
	if Input.is_action_pressed("左键"):
		get_window().position += Vector2i(get_global_mouse_position() - 鼠标按下位置)
		
	if Input.is_action_pressed("esc"):
		get_tree().quit()
		
	
	
	
	
	
