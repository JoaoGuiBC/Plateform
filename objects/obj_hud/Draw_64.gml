#region SHOW LIFE
	if (global.life <= 0) {
		draw_sprite_ext(spr_heart, 0, 25, 25, 2, 2, 0, c_white, 1);
	}
	if (global.life == 1) {
		draw_sprite_ext(spr_heart, 1, 25, 25, 2, 2, 0, c_white, 1);
	}
	if (global.life == 2) {
		draw_sprite_ext(spr_heart, 2, 25, 25, 2, 2, 0, c_white, 1);
	}
	if (global.life == 3) {
		draw_sprite_ext(spr_heart, 3, 25, 25, 2, 2, 0, c_white, 1);
	}
	if (global.life == 4) {
		draw_sprite_ext(spr_heart, 4, 25, 25, 2, 2, 0, c_white, 1);
	}
#endregion

draw_sprite_ext(spr_power, 1, 25, 60, 1, 1, 0, c_white, 1);

draw_text_color(50, 52, "x" + string(global.powers), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);