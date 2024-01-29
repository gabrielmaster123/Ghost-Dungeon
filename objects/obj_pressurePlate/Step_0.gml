/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player) || place_meeting(x, y, obj_ghost)) {
    pressed = true;  // Set pressed to true when touching either obj_player or obj_ghost
} else {
    pressed = false; // Set pressed to false when not touching any of the objects
}

switch (function_id) {
    case 1:
    if(pressed){
        inst_2C04AE1F.x = -2;
        inst_2C04AE1F.y = -2; 
    }else{
        inst_2C04AE1F.x = 216;
        inst_2C04AE1F.y = 560;
    }
        break;
}









