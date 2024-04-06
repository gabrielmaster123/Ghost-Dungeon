/// @description Insert description here
// You can write your code in this editor
if(obj_player.x > x + 8){
    x--;
}else if(obj_player.x < x - 8){
    x++;
}else if(obj_player.y > y){ //remove the 8 because of the players top collision being shorter
    y--;
}else if(obj_player.y < y - 8){
    y++;
}