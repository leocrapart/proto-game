extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var velocity = 5
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += velocity
	if Input.is_action_pressed("ui_left"):
		position.x -= velocity
	if Input.is_action_pressed("ui_down"):
		position.y += velocity
	if Input.is_action_pressed("ui_up"):
		position.y -= velocity
	
	if Input.is_action_pressed("ui_right_click"):
		print("pew")
		var missile = load("res://missile.tscn")
		var m = missile.instance()
		add_child(m)
		print(m)
		print(m.position)
		m.position.x = 100
		m.position.y = 100
		print(m.position)
		
#		var node = m.get_node("missile")
#		node.position.x = 100
#		node.position.y = 100
		
#func shoot():
#	var missile = load("res://missile.tscn").instance()
#	add_child(missile)
#	missile.position.x = 100
#	missile.position.y = 100
