// obj_ghost Create Event
moves_x = [];
moves_x_r = [];
moves_y = [];
moves_y_r = [];
startx = 0;
starty = 0;
move_spd = 1;
image_record = [];
recording_exists = false;
recording = false;
replay_index = 0;
replaying = false;
dx=0;
dy=0;
visible=false;
save_y = y;
save_x = x;
//save checkpoint
save = {
    x: obj_player.save.x,
    y: obj_player.save.y,
    id: obj_player.save.id
}

