extends RigidBody2D

# Movement speed
var speed = 200.0

func _ready():
	gravity_scale = 0  # Ignore gravity

func _physics_process(delta):
	var velocity = linear_velocity  # Get the current velocity
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed  # Move right
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed  # Move left
	else:
		velocity.x = 0  # Stop horizontal movement if no input

	linear_velocity = velocity  # Apply the updated velocity
