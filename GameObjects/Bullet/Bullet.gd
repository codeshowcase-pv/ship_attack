extends KinematicBody2D


var SPEED = 100000
var direction = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	direction = Vector2(0, -1)
	
	var velocity = direction * SPEED * delta
	
	#self.position.y = clamp()
	
	move_and_slide(velocity)
