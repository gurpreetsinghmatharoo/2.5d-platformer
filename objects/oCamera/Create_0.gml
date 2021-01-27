/// @description 
// Camera
camera	= view_camera[0];

// 3D camera properties
camDist	= -220;
camFov	= 80;
camAsp	= camera_get_view_width(camera) / camera_get_view_height(camera);

gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_texrepeat(true);