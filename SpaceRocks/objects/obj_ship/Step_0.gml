/// @description
// Inputs
rotationInput = keyboard_check(vk_left) - keyboard_check(vk_right);
moveInput = keyboard_check(vk_up);

// Move + Rotation
image_angle += rotationInput * rotationSpeed;
motion_add(image_angle, moveInput * moveSpeed);

//Shoot
if(keyboard_check_pressed(vk_space)) {
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	_bullet.direction = image_angle;
	audio_play_sound(snd_zap, 1, false);
}

// Prevents outside screen
move_wrap(true, true, sprite_width/2);