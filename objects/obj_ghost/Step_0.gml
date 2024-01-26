if(recording){
	array_push(moves_x, obj_player.x);
	array_push(moves_y, obj_player.y);
	array_push(image_record, );
	show_debug_message("R");
}else if (!recording){
	if(recording_exists){
		if(array_length(moves_x)>0){
			x = moves_x[0];
			y = moves_y[0];
			array_insert(moves_x_r, 0, moves_x[0]);
			array_insert(moves_y_r, 0, moves_y[0]);
			array_shift(moves_x);
			array_shift(moves_y);
			show_debug_message("P");
		}else if(array_length(moves_x)<1){
			array_copy(moves_x, 0, moves_x_r, 0, array_length(moves_x_r));
			array_copy(moves_y, 0, moves_y_r, 0, array_length(moves_y_r));
			moves_x_r = [];
			moves_y_r = [];
		}
	}
}