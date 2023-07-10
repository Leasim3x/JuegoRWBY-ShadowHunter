function scrPlayerMovement(){
	if (isWallJumping != 0) {
		scrMovement(sign(isWallJumping), 2, width, height);
		image_xscale = sign(isWallJumping);
		exit;
	}
	
	var hor = keyboard_check(vk_right) - keyboard_check(vk_left);

	if (hor != 0) {
		scrMovement(sign(hor), 2, width, height);
		image_xscale = sign(hor);
		action = "Walk";
	} else if (vspeed == 0) {
		action = "Idle";
	}
}