// Collision event of player with save object
	if(saved==true){//dont run the first time
			id.activated = false;
	}
	saved=true;
    save.id = other.id;
    save.x = save.id.x;
    save.y = save.id.y;


