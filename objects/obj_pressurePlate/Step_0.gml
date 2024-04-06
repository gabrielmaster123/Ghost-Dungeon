/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player) || place_meeting(x, y, obj_ghost) || place_meeting(x, y, obj_pushable_box)) {
    interact_id.active = false; 
} else {
    interact_id.active = true; 
}










