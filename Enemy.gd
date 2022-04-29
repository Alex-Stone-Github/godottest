extends KinematicBody2D

var velocity = Vector2();
var gravity = 2500;
export var speed = 50;

func _physics_process(delta):
	velocity.y += gravity * delta;
	velocity.x = speed;
	if is_on_wall():
		speed = -50;
	velocity = move_and_slide(velocity, Vector2.UP);
	
