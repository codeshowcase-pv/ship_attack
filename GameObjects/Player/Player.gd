extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const SPEED = 25000

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector2(0, 0)
	
	if Input.is_action_pressed("ui_left"):
		direction = Vector2(-1, 0)
	if Input.is_action_pressed("ui_right"):
		direction = Vector2(1, 0)
	
	var velocity = direction * delta * SPEED
	
	
	
	self.position.x = clamp(
		self.position.x,
		$Sprite.texture.get_width() / 2 ,
		get_viewport().size.x - $Sprite.texture.get_width() / 2
		)
	self.position.y = clamp(self.position.y, 0 , get_viewport().size.y)
	
	move_and_slide(velocity)
	pass
