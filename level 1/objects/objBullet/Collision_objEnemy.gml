if (side == "enemy") { exit; }
if (!scrEnemyDamage(other, dmg)) { exit; }

move_contact_all(direction, 16);
var bulletCollision = instance_create_layer(x, y, "Bullets", objBulletCollision);
bulletCollision.sprite_index = collisionSprite;
	
instance_destroy();