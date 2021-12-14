global.cameraX = 0;
global.cameraY = 0;
target = obj_player;

global.cameraWidth = 1024;
global.cameraHeight = 600;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

global.cameraX = target.x - (global.cameraWidth / 2);
global.cameraY = target.y - (global.cameraHeight / 2);
	
global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

displayScale = 1;
displayWidth = global.cameraWidth * displayScale;
displayHeight = global.cameraHeight * displayScale;

window_set_size(displayWidth * 1.25, displayHeight);
surface_resize(application_surface, displayWidth * 1.25, displayHeight);

alarm[0] = 1;