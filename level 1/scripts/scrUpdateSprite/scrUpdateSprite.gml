function scrUpdateSprite(){
	switch (state) {
		case "idle":
		case "attack":
			sprite_index = asset_get_index("spr" + objSystem.weapons[objSystem.weaponInd] + action);
			break;
			
		case "dash":
			sprite_index = sprDash;
			break;
	}
	
}