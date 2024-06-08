extends Node2D

const SPEED = 60
@onready var animated_sprite_2d = $AnimatedSprite2D

var dir = 1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		dir = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		dir = 1
		animated_sprite_2d.flip_h = false
		
	position.x += dir * (SPEED * delta)
