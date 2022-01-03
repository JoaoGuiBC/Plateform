#region CONTROLS
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_up);
key_shoot = keyboard_check_pressed(ord("X"));
#endregion

#region MOVIMENT
var move = key_right - key_left

hspd = move * spd;
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

//JUMP
if place_meeting(x, y+1, obj_wall) and key_jump and !dying {
	vspd -= 10;
}
#endregion

#region SPRITE CONTROL
	if(hspd != 0) {
		image_xscale = sign(hspd);
	}
	
	if (sprite_index != spr_player_shoot and !dying) {
		if (!place_meeting(x, y+1, obj_wall)) {
			sprite_index = spr_player_jump;
		} else {
			if (hspd != 0) {
				sprite_index = spr_player_run;	
			}
		}
		if (hspd == 0) {
			if (place_meeting(x, y+1, obj_wall)) {
				sprite_index = spr_player;
			}
		}
		if (hspd != 0) {
			if (place_meeting(x, y+1, obj_wall)) {
				sprite_index = spr_player_run;
			}
		}
	}
	
#endregion

#region SHOOT POWER
	_xx = x + lengthdir_x(8 * image_xscale, image_angle);
	
	if key_shoot and global.powers > 0 and !dying {
		sprite_index = spr_player_shoot;
	}
#endregion

if (global.life < 1) {
	dying = true;
	key_shoot = false;
	
	sprite_index = spr_player_death;
}