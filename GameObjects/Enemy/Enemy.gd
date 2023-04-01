extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var hp = 3

func takeDamage(value):
	hp -= value
	if hp <= 0:
		queue_free()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
