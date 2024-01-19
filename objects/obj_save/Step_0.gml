/// @description correctly play animation 
// Sie können Ihren Code in diesem Editor schreiben

if (activated == true) {    
    sprite_index = spr_save_active;
    image_speed = 1;
    alarm[0] = game_get_speed(gamespeed_fps);
}else{
    sprite_index = spr_save_inactive;
    image_speed = 0;
}
