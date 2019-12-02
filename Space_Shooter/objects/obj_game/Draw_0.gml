switch(room){
	case rm_game:
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 35, "LIVES: "+string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 100, "Space Shooter",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
		room_width/2, 200,
			@"Score 1,000 points to win!
			
			Controls (Arrow Keys)
			
			Up: Accelerate
			Left/Right: Turn
			Spacebar: Shoot
			
			>> Press ENTER to begin <<
			"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center)
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 200, "YOU WIN!",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
		room_width/2, 200,
			"Press ENTER to play again"
		);
		draw_set_halign(fa_left);
	
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "Game Over",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2, 250,
			"Final Score: "+string(score)		
		);
		draw_text(
			room_width/2, 300,
			"Press ENTER to play again"
			);
		draw_set_halign(fa_left);
		break;
}