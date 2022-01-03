switch(sprite_index) {
	case spr_player_shoot:
		with(instance_create_layer(_xx, y + 2, "Shoot", obj_power)) {
			global.powers--;
			direction = -90 + 90 * other.image_xscale;
			image_angle = direction;
		}
  
		sprite_index = spr_player;
		break;
	
	case spr_player_death:
		game_restart();
}