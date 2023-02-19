extends KinematicBody2D

onready var bullet = preload("res://GameObjects/Bullet/Bullet.tscn")


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const SPEED = 25000

func _ready():
	
	pass


func _process(delta):
	var direction = Vector2(0, 0)
	
	if Input.is_action_pressed("ui_left"):
		direction = Vector2(-1, 0)
	if Input.is_action_pressed("ui_right"):
		direction = Vector2(1, 0)
	if Input.is_action_just_pressed("fire"):
		fire()
	
	var velocity = direction * delta * SPEED
	
	
	
	self.position.x = clamp(
		self.position.x,
		$Sprite.texture.get_width() / 2 ,
		get_viewport().size.x - $Sprite.texture.get_width() / 2
		)
	self.position.y = clamp(self.position.y, 0 , get_viewport().size.y)
	
	move_and_slide(velocity)
	pass
	
func fire():
	var newBullet = bullet.instance()
	var bulletStart = $BulletStart
	print(bulletStart.global_position)
	newBullet.position = bulletStart.global_position
	
	get_tree().get_root().add_child(newBullet)
