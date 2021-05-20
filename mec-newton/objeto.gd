extends Superficie

var grav: = 9.8

func _ready() -> void:
	set_physics_process(true)

func _physics_process(delta: float) -> void:
	var ace: = calculate_aceleration()
	var vel: = calculate_move_velocity(ace)
	vel = move_and_slide(vel)

func calculate_aceleration() -> Vector2:
	var aceleration: = Vector2()
	aceleration.x = grav*(sin(25*(PI/180))-_coef_maderaenc_nievehum*cos(25*(PI/180)))
	aceleration.y = 0.0
	return aceleration

func calculate_move_velocity(ace: Vector2) -> Vector2:
	var velocity: = Vector2()
	velocity.x += 20 + ace.x * get_physics_process_delta_time()
	velocity.y += 20 + grav * get_physics_process_delta_time()
	return velocity
