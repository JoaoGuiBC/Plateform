function EnemyStateChase(){
	#region MOVIMENT
	vspd = vspd + grv;

	//HORIZONTAL COLLISION
	if place_meeting(x+hspd, y, obj_wall) {
		while(!place_meeting(x+sign(hspd), y, obj_wall)) {
			x = x + sign(hspd);
		}
		hspd = 0;
	}

	x = x + hspd;

	//VERTICAL COLLISION AND GRAVITY
	if place_meeting(x, y+vspd, obj_wall) {
		while(!place_meeting(x, y+sign(vspd), obj_wall)) {
			y = y + sign(vspd);
		}
		vspd = 0;
	}

	y = y + vspd;
	#endregion
	
	if (hspd != 0) image_xscale = sign(hspd); //Change sprite side
	
	vir = sign(obj_player.x - x);
	hspd = vir * 3;
	
	if distance_to_object(obj_player) > distance {
		state = EnemyState.IDLE;
		sprite_index = spr_enemy;
	}
	
	if distance_to_object(obj_player) < 4 {
		state = EnemyState.ATTACK;
	}
}