var up_key = keyboard_check(ord("W"));
var down_key = keyboard_check(ord("S"));
var right_key = keyboard_check(ord("D"));
var left_key = keyboard_check(ord("A"));

dx = (right_key - left_key) * move_spd;
dy = (down_key - up_key) * move_spd;

//check collision with walls
if place_meeting(x + dx, y, obj_wall){
	dx = 0;
}
if place_meeting(x, y + dy, obj_wall){
	dy = 0;
}

x += dx;
y += dy;

//animation
 if(right_key){
  sprite_index = spr_player_walking_right;
  image_speed = 1;
}else if(left_key){
  sprite_index = spr_player_walking_left;
  image_speed = 1;
}else if(up_key){
  sprite_index = spr_player_walking_up;
  image_speed = 1;
}else if(down_key){
  sprite_index = spr_player_walking_down;
  image_speed = 1;
}else if (dx == 0 && dy == 0) {
  sprite_index = spr_player;
  image_speed = 0;
} 

// Check collision with save file
if (place_meeting(x, y, obj_save) && !obj_save.activated) {
    // Code to execute when player touches the save file for the first time
    obj_save.sprite_index = spr_save_active;
    obj_save.image_speed = 0.6;  // Adjust the speed as needed

    // Set the activation flag to true to prevent further activation
    obj_save.activated = true;
}