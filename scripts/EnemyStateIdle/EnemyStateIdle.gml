function EnemyStateIdle(){
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
	
	if distance_to_object(obj_player) < distance
		and !collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false) {
		state = EnemyState.CHASE;
		sprite_index = spr_enemy_run;
	}
}