extends RigidBody2D

@export var lifetime = 10

func _ready():
	$Lifetime.wait_time = lifetime

func _process(delta):
	# Shrink casing when it's about to disapear
	if $Lifetime.time_left < 1:
		$Sprite2D.scale = Vector2(0.5, 0.2) * $Lifetime.time_left 

func _on_lifetime_timeout():
	queue_free()
