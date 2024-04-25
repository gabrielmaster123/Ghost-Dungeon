
if(recording){
	x = -2;
	y = -2;
	array_push(moves_x, obj_player.dx);
	array_push(moves_y, obj_player.dy);
	if(keyboard_check_pressed(ord("E"))){
		array_push(interactions, true);
		show_debug_message("true");
	}else{
		array_push(interactions, false);
	}
	
}else if (!recording){
	if(recording_exists){
		//check collision with 
		if(array_length(moves_x)>0){
			dx = moves_x[0];
			dy = moves_y[0];
			if place_meeting(x + dx, y, obj_wall){
			dx = 0;
			}
			if place_meeting(x, y + dy, obj_wall){
				dy = 0;
			}
			x += dx;
			y += dy;
			array_insert(moves_x_r, 0, moves_x[0]*-1);
			array_insert(moves_y_r, 0, moves_y[0]*-1);
			array_shift(moves_x);
			array_shift(moves_y);
			
		}else if(array_length(moves_x)<1){
			array_copy(moves_x, 0, moves_x_r, 0, array_length(moves_x_r));
			array_copy(moves_y, 0, moves_y_r, 0, array_length(moves_y_r));
			moves_x_r = [];
			moves_y_r = [];
		} 
		
		if(array_length(interactions) > 0){
			// Check the recorded interaction
			var recorded_interaction = interactions[0];
			if(recorded_interaction){
				var switch_instance = instance_place(x, y, obj_switch);
				if (switch_instance != noone) {
					switch_instance.pressed = !switch_instance.pressed;
				}
			}
			array_insert(interactions_r, 0, recorded_interaction * -1);
			array_shift(interactions);
		} else {
			array_copy(interactions, 0, interactions_r, 0, array_length(interactions_r));
			interactions_r = [];
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
