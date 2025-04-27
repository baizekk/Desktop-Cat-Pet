class_name 状态节点
extends Node

var 左右方向 := 0
var 上下方向 := 0

@export var 主角 : Node2D
@export var 动画 : AnimatedSprite2D

var 速度 := 150


func _ready() -> void:
	await owner.ready

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	左右方向 = Input.get_axis("向左", "向右")
	上下方向 = Input.get_axis("向下", "向上")
	
func 状态进入() -> void:
	pass
	
func 状态退出() -> void:
	pass
	
func 更新(delta : float) -> void:
	pass
	
func 物理更新	(delta : float) -> void:
	pass
	
func 跳转条件() -> String:
	return ""
