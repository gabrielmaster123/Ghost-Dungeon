// Collision event of player with save object
// Collision event of player with save object

    save.id = other.id;
    save.x = save.id.x;
    save.y = save.id.y;

    // Destroy all instances of obj_ghost
    if (instance_number(obj_ghost) > 0) {
        with (obj_ghost) {
            instance_destroy();
        }
         // Create a new instance of obj_ghost
        instance_create_layer(save.x, save.y, "Instances", obj_ghost);
    }

    
    
    if (obj_ghost.save_x != save.id.x && obj_ghost.save_y != save.id.y) {
        obj_ghost.visible = false;
    } else {
        obj_ghost.visible = true;
    }

