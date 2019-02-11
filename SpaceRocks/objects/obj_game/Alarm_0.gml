/// @description
//Prevents spawn in wrong rooms
if (room != rm_game) {
	exit;
}

if (choose(0, 1)) {
	var _x = choose(0, room_width);
	var _y = irandom_range(0, room_height);
} else {
	var _x = irandom_range(0, room_width);
	var _y = choose(0, room_height);
}

instance_create_layer(_x, _y, "Instances", obj_asteroid);

alarm[0] = 4 * room_speed;