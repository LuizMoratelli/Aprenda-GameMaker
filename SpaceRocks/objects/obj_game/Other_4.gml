/// @description 
if (room == rm_game) {
	//music
	if(audio_is_playing(msc_song)) {
		audio_stop_sound(msc_song);
	}
	audio_play_sound(msc_song, 2, true);
	
	repeat(6) {
		var _x = choose(
			irandom_range(0, room_width * 0.3),
			irandom_range(room_width * 0.7, room_width)
		);
		var _y = choose(
			irandom_range(0, room_height * 0.3),
			irandom_range(room_height * 0.7, room_height)
		);
	
		instance_create_layer(_x, _y, "Instances", obj_asteroid);
	}
	
	//Steps to wait
	alarm[0] = 60;
}