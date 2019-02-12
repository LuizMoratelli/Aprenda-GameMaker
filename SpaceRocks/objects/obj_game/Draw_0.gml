/// @description 
switch(room) {
	case rm_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "MULTIPLIER: " + string(global.scoreMultiplier));	
		draw_text(20, 60, "LIVES: " + string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var _color = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS",
			3, 3, 0, _color, _color, _color, _color, 1
		);
		draw_text(
			room_width/2, 200,
			@"Score 1,000 points to win!
			
			UP: move
			LEFT/RGHT: change diretion
			SPACE: shoot
			
			>> PRESS ENTER TO START<<
			"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var _color = c_lime;
		draw_text_transformed_color(
			room_width/2, 200, "YOU WON!",
			3, 3, 0, _color, _color, _color, _color, 1
		);
		draw_text(
			room_width/2, 300,
			">> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var _color = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER",
			3, 3, 0, _color, _color, _color, _color, 1
		);
		draw_text(
			room_width/2, 250,
			"FINAL SCORE: " + string(score)
		);
		draw_text(
			room_width/2, 300,
			">> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left);
		break;
}
