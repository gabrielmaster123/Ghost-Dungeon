/// @description Insert description here
// You can write your code in this editor
if(obj_ghost.x > x + 8){
    x--;
}else if(obj_ghost.x < x - 8){
    x++;
}else if(obj_ghost.y > y){ //remove the 8 because of the ghosts top collision being shorter
    y--;
}else if(obj_ghost.y < y - 8){
    if (place_meeting(x , y+8, obj_wall)){
        y++;
    }
}

