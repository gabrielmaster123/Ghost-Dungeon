// obj_ghost Step Event
if (!replaying) {
    // Record player movement when not replaying
    var move_record = ds_map_create();
    move_record[? "x"] = x;
    move_record[? "y"] = y;
    move_record[? "dx"] = other.dx;
    move_record[? "dy"] = other.dy;
    
    ds_list_add(recorded_moves, move_record);
}

if (replaying) {
    // Replay recorded movements
    if (replay_index < ds_list_size(recorded_moves)) {
        var move_data = recorded_moves[| replay_index];
        
        x = move_data[? "x"];
        y = move_data[? "y"];
        
        replay_index += 1;
    } else {
        // Stop replaying when all movements are replayed
        replaying = false;
    }
}