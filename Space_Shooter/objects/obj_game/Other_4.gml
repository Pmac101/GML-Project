if(room == rm_game){
	//Repeat = number of asteroids spawning
	repeat(3){
		var xx = choose(
			irandom_range(0, room_width*0.2),
			irandom_range(room_width*0.8, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height*0.2),
			irandom_range(room_height*0.8, room_height)
		);
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}

	alarm[0] = 60;
}