extends Area

var locked = true

func _ready():
	$Light.light_color == Color(1,0,0,1)

func unlock():
	locked = false
	$Light.light_color == Color(0,1,0,1)
	
func _on_Exit_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Player" and not locked:
		queue_free()


