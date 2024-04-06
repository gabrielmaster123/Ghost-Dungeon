/// @description Insert description here
// You can write your code in this editor
if(obj_player.x > x + 8){
    if(!place_meeting(x-1, y, obj_wall)){
        x--;
    }
}else if(obj_player.x < x - 8){
    if(!place_meeting(x+1, y, obj_wall)){
        x++;
    }
}else if(obj_player.y > y){ //remove the 8 because of the players top collision being shorter
    if(!place_meeting(x, y-1, obj_wall)){
        y--;
    }
}else if(obj_player.y < y - 8){
    if(!place_meeting(x, y+1, obj_wall)){
        y++;
    }
}

