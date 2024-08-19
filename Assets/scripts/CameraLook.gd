extends Node3D

var pause_bool := false

@export var mouseSensitivity := 0.01
var MouseX := 0.0
var MouseY := 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED) # Replace with function body.


func _on_pause_signal():
	if pause:
		resume()
	else:
		pause()
	

func pause():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pause_bool = true
	
func resume():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	pause_bool = false


func _unhandled_input(event):
	pass	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
