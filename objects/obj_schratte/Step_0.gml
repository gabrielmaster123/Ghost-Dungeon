/// @description Insert description here
// You can write your code in this editor

if(obj_player.x>x){
    dx=move_spd;
}else if(obj_player.x<x){
    dx = -move_spd;
}else{
    dx=0;
}

if(obj_player.y>y){
    dy=move_spd;
}else if(obj_player.y<y){
    dy = -move_spd;
}else{
    dy=0;
}


 




// Inherit the parent event
event_inherited();

if(dx>0){
  sprite_index = spr_schratte_walking_left;
  image_speed = 1;
}else if(dx<0){
  sprite_index = spr_schratte_walking_left;
  image_speed = 1;
}else if(dy<0){
  sprite_index = spr_schratte_walking_left;
  image_speed = 1;
}else if(dy>0){
  sprite_index = spr_schratte_walking_left;
  image_speed = 1;
}else if (dx == 0 && dy == 0) {
  sprite_index = spr_schratte_walking_left;
  image_index = 0;
  image_speed = 0;
} 