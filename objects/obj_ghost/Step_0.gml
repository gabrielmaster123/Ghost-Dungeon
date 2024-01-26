if(recording){
	array_push(moves_x, obj_player.x);
	array_push(moves_y, obj_player.y);
	show_debug_message("R");
}else if (!recording){
	if(recording_exists){
		if(array_length(moves_x)>0){
			x = moves_x[0];
			y = moves_y[0];
			array_shift(moves_x);
			array_shift(moves_y);
			show_debug_message("P");
		}
	}
}