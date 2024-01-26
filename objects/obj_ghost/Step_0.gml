if(recording){
	array_push(moves_x, obj_player.x);
	array_push(moves_y, obj_player.y);
	array_push(image_record, );
	show_debug_message("R");
}else if (!recording){
	if(recording_exists){
		if(array_length(moves_x)>0){
			move_animation();
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

function move_animation(){//current x/y future x/y
	if(x==moves_x[0] && y==moves_y[0]){
		sprite_index = spr_ghost;
		image_speed = 0;
	}else if(x<moves_x[0]){
		sprite_index = spr_ghost_walking_right;
		image_speed = 1;
	}else if(x>moves_x[0]){
		sprite_index = spr_ghost_walking_left;
		image_speed = 1;
	}else if(y<moves_y[0]){
		sprite_index = spr_ghost_walking_down;
		image_speed = 1;
	}else if(y>moves_y[0]){
		sprite_index = spr_ghost_walking_up;
		image_speed = 1;
	}
}
/*//animation
 if(right_key){
  
}else if(left_key){
  sprite_index = spr_player_walking_left;
  image_speed = 1;
}else if(up_key){
  sprite_index = spr_player_walking_up;
  image_speed = 1;
}else if(down_key){
  sprite_index = spr_player_walking_down;
  image_speed = 1;
}*/