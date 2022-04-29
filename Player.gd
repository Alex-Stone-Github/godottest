extends KinematicBody2D

export var gravity = 2500;
export var speed = 40;
export var jump_force = 45000;

var velocity = Vector2();

func _physics_process(delta):
	velocity.y += gravity * delta;
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= jump_force * delta;
	if Input.is_action_pressed("left"):
		velocity.x -= speed;
	if Input.is_action_pressed("right"):
		velocity.x += speed;
	velocity = move_and_slide(velocity, Vector2.UP);
