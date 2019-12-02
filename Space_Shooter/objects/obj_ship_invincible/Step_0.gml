//Game controls
if (keyboard_check(vk_left)){
	image_angle = image_angle + 5;
}

if (keyboard_check(vk_right)){
	image_angle = image_angle - 5;
}
	
if (keyboard_check(vk_up)){
	motion_add (image_angle, 0.05);
}	

if (keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x,y, "Instances", obj_bullet);
	inst.direction = image_angle;
	audio_play_sound(snd_laser2, 1, false);
}

move_wrap (true, true, sprite_width/2);

//Respawn & Invincibility

if (invincible == 0) and (place_meeting(x+1, y+1, obj_asteroid))
{
	instance_destroy(obj_ship_invincible);
	lives -= 1;
	audio_play_sound(snd_explosion, 1, false);
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_ship_invincible);
}