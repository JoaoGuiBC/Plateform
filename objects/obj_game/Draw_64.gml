if global.life <= 0 {
	draw_text_ext_transformed_color(
		window_get_width() / 2,
		window_get_height / 3,
		"VOCÊ MORREU",
		5, 1200, 4, 4, 0,
		c_red, c_red, c_red, c_red, 1
	);
	
	draw_set_color(c_black);
	
	draw_text(
		window_get_width() / 2,
		window_get_height / 1.5,
		"Aperte 'R' para recomeçar",
	);
	
	draw_text(
		window_get_width() / 2,
		window_get_height / 1.4,
		"Aperte 'Esc' para fechar o jogo",
	);
}