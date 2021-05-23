extends Superficie

var grav: = 9.8
onready var text: RichTextLabel = get_node("RichTextLabel")

func _ready() -> void:
	set_physics_process(true)

func _physics_process(delta: float) -> void:
	var ace: = calculate_aceleration()
	var vel: = calculate_move_velocity(ace)
	var velocidad: = sqrt((vel.x*vel.x)+(vel.y*vel.y))
	text.set_text("Mader encerada sobre nieve humeda")
	text.newline()
	text.add_text("Velocidad: " + str(velocidad))
	vel = move_and_slide(vel)

func calculate_aceleration() -> Vector2:
	var aceleration: = Vector2()
	aceleration.x = grav*(sin(25*(PI/180))-_coef_maderaenc_nievehum*cos(25*(PI/180)))
	aceleration.y = 0.0
	return aceleration

func calculate_move_velocity(ace: Vector2) -> Vector2:
	var velocity: = Vector2()
	velocity.x += 10 + ace.x * get_physics_process_delta_time()
	velocity.y += 10 + grav * get_physics_process_delta_time()
	return velocity
