extends Node3D

@onready var button: Button = $CanvasLayer/Control/Button

@onready var control: Control = $CanvasLayer/Control

func _ready() -> void:
	button.pressed.connect(start)
	
func start() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	control.hide()

func _unhandled_input(event: InputEvent) -> void:

	if event.is_action_pressed("ui_cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
