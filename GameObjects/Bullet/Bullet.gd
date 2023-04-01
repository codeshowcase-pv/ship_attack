extends KinematicBody2D


var SPEED = 100000
var direction = Vector2()

var damage = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	direction = Vector2(0, -1)
	
	var velocity = direction * SPEED * delta
	
	#self.position.y = clamp()
	
	move_and_slide(velocity)


func _on_Area2D_body_entered(body):
	if body.is_in_group("enemy"):
		body.takeDamage(damage)
		queue_free()
	pass # Replace with function body.
