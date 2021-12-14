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

if(hspd != 0) {
	image_xscale = sign(hspd);
}

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
if place_meeting(x, y+1, obj_wall) and key_jump {
	vspd -= 10;
}
#endregion

#region SPRITE CONTROL
	if sprite_index != spr_player_shoot {
		if (!place_meeting(x, y+vspd, obj_wall)) sprite_index = spr_player_jump
	
		if (place_meeting(x, y+1, obj_wall) and hspd != 0) sprite_index = spr_player_run;
		if (place_meeting(x, y+1, obj_wall) and hspd == 0) sprite_index = spr_player;
	}
#endregion

#region SHOOT POWER
	flipped = direction;
	power_x = (x + 4) * flipped;
	_xx = x + lengthdir_x(8 * image_xscale, image_angle);
	y_offset = lengthdir_y(-20, image_angle);
	
	if key_shoot and global.powers > 0 {
		sprite_index = spr_player_shoot;
	}
#endregion