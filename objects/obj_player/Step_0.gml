#region CONTROLS
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_space= keyboard_check(vk_space);
#endregion

#region MOVIMENT
var move = key_right - key_left

hspd = move * spd;
vspd = vspd + grv;

if(hspd != 0) image_xscale = sign(hspd);

if place_meeting(x+hspd, y, obj_wall) {
	while(!place_meeting(x+sign(hspd), y, obj_wall)) {
		x = x + sign(hspd);
	}
	hspd = 0;
}

x = x + hspd;

show_debug_message(x);

if place_meeting(x, y+vspd, obj_wall) {
	while(!place_meeting(x, y+sign(vspd), obj_wall)) {
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd;
#endregion