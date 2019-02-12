/// @description
image_alpha -= 0.001;

if (image_alpha <= 0) {
	instance_destroy();

	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}