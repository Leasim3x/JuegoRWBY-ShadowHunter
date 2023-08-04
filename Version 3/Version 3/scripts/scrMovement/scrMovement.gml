function scrMovement(hor, spd, width, height){
	var xTo = x + hor * spd;
	var moved = false;
	
	for (var i=1;i<8;i++) {
		var wall = collision_rectangle(xTo-width, y-i-height, xTo+width, y-i, objWall, true, true);
		if (!wall || !wall.solid) {
			x = xTo;
			moved = true;
			if (vspeed == 0) {
				y -= i - 1;
			}
			break;
		}
	}
	
	if (vspeed == 0 && moved) {
		for (var i=1;i<8;i++) {
			var wall = collision_rectangle(xTo-width, y+i-height, xTo+width, y+i, objRamp, true, true);
			if (wall) {
				y += i;
				break;
			}
		}
	}
}