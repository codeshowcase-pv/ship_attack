extends ParallaxBackground

export (float) var scrolling_speed = 500.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	scroll_offset.y += scrolling_speed * delta
