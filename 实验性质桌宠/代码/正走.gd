extends 状态节点

func 状态进入() -> void:
	动画.play("正走")
	
func 状态退出() -> void:
	pass
func 更新(delta : float) -> void:
	pass

func 物理更新(delta : float) -> void:
	#主角.velocity.x = move_toward(主角.velocity.x, 0, 20)
	get_window().position.y += round(速度 * delta)

func 跳转条件() -> String:
	if Input.is_action_just_released("向下"):
		return "正站"
		
	elif Input.is_action_just_pressed("向上"):
		return "反走"
		
	elif Input.is_action_just_pressed("向左"):
		return "左走"
		
	elif Input.is_action_just_pressed("向右"):
		return "右走"
	
	else:
		return ""
