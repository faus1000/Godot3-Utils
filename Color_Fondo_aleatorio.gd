extends Node2D
func _on_Timer_timeout():
	#FUNCIONA DE MARAVILLA
	var rdgen = RandomNumberGenerator.new()
	rdgen.randomize()
	# el cambion de fondo puede ser por tiempo o por cada vandera resuelto
	var cls = [
		"caeaed",
		"e3c0c0",
		"e3c0e2",
		"c0c5e3",
		"b5dbdb",
		"b5dbcb",
		"bcdbb5",
		"d3dbb5",
		"dbd2b5",
		"dbc2b5"
	]
	var rd = rdgen.randi_range(0, cls.size() - 1)

	var cr: ColorRect = get_node("fondoColor")
	var animation = get_tree().create_tween()
	animation.tween_property(cr, "color", Color(cls[rd]), 1.0)
	pass  # Replace with function body.
