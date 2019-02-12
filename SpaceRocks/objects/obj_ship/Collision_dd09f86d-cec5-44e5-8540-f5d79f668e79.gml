/// @description
switch(other.sprite_index) {
	case spr_shield:
		indestructible = true;
		sprite_index = spr_ship_indestructible;
		alarm[0] = timePowerup * room_speed;
		break;
	case spr_score_multiplier:
		global.scoreMultiplier = 2;
		alarm[1] = timePowerup * room_speed;
		break;
}

instance_destroy(other);
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}