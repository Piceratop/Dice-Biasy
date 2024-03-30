if (image_angle > 0) {
	image_angle -= 15;
	var _chosen = choose_array(values)
	image_index = _chosen;
	if (image_angle <= 0) {
		obj_controller.total_value[die_id] = _chosen;
	}
}

var _gap = obj_controller.dice_gap

if (mouse_check_button_pressed(mb_left) && collision_rectangle(mouse_x - _gap, mouse_y - _gap, mouse_x + _gap,
	mouse_y + _gap, obj_die, false, false)) {
	image_angle = 360;
}