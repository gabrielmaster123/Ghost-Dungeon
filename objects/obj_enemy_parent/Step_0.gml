/// @description Insert description here
// You can write your code in this editor


//check collision with walls
if place_meeting(x + dx, y, obj_wall){
	dx = 0;
}
if place_meeting(x, y + dy, obj_wall){
	dy = 0;
}

x += dx;
y += dy;







