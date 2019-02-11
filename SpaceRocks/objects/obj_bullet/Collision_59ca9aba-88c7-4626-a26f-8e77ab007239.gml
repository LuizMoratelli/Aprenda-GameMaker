/// @description 
//Add score
score += 10;

audio_play_sound(snd_die, 1, false);

//Destroy bullet
instance_destroy();

//Destroy Asteroid
with(other) {
	instance_destroy(); // == instance_destroy(other);
	
	//Instantiate 2x small than current asteroid
	if(sprite_index == spr_asteroid_huge) {
		repeat(2) {
			var _asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			_asteroid.sprite_index = spr_asteroid_med;
		}
	} else if(sprite_index == spr_asteroid_med) {
		repeat(2) {
			var _asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(10){
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}

